package app.morphe.extension.instagram.patches.instants;

import android.app.Activity;
import android.graphics.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import com.instagram.quicksnap.camera.domain.QuickSnapCameraViewModel;

/** Edits only a staging bitmap; the gallery original is never written. */
public final class GalleryCrop {
    public static void open(final Activity activity, Bitmap image, final QuickSnapCameraViewModel vm) {
        if (vm.galleryWidth <= 0 || vm.galleryHeight <= 0) {
            InstantsGalleryBridge.notice("Open the QuickSnap camera and choose the photo again.");
            activity.finish(); return;
        }
        activity.setRequestedOrientation(14);
        LinearLayout layout = new LinearLayout(activity);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setBackgroundColor(Color.BLACK);
        TextView title = new TextView(activity);
        title.setText("Drag to position · Pinch to zoom");
        title.setTextColor(Color.WHITE); title.setGravity(Gravity.CENTER); title.setPadding(12,24,12,12);
        layout.addView(title);
        final CropView preview = new CropView(activity, image, vm.galleryWidth, vm.galleryHeight);
        layout.addView(preview, new LinearLayout.LayoutParams(-1,0,1));
        LinearLayout buttons = new LinearLayout(activity);
        String[] labels = {"Cancel", "−", "+", "Reset", "Use photo"};
        for (int i=0;i<labels.length;i++) {
            final int action=i;
            Button button=new Button(activity); button.setText(labels[i]);
            button.setContentDescription(i==1?"Zoom out":i==2?"Zoom in":labels[i]);
            buttons.addView(button,new LinearLayout.LayoutParams(0,-2,i==4?1.6f:1));
            button.setOnClickListener(new View.OnClickListener(){ public void onClick(View v){
                if(action==0){InstantsGalleryBridge.cancel();activity.finish();}
                else if(action==1) preview.zoom(1/1.25f,preview.box.centerX(),preview.box.centerY());
                else if(action==2) preview.zoom(1.25f,preview.box.centerX(),preview.box.centerY());
                else if(action==3) preview.reset();
                else {
                    try {
                        Bitmap cropped=preview.render();
                        GalleryScene.select(activity,cropped,vm);
                        cropped.recycle();
                        activity.finish();
                    } catch (OutOfMemoryError error) {
                        InstantsGalleryBridge.notice("Not enough memory. Try a smaller photo.");
                    } catch (RuntimeException error) {
                        InstantsGalleryBridge.notice("Could not prepare this photo. Try again.");
                    }
                }
            }});
        }
        layout.addView(buttons); activity.setContentView(layout);
    }
    public static final class CropView extends View {
        private final Bitmap image;
        private final int targetWidth,targetHeight;
        final RectF box=new RectF();
        private final Paint paint=new Paint(3);
        private final ScaleGestureDetector pinch;
        private float scale,base,x,y,lastX,lastY;
        private int dragId=-1;
        CropView(Activity activity,Bitmap bitmap,int width,int height){
            super(activity);image=bitmap;targetWidth=width;targetHeight=height;
            setContentDescription("Photo crop. Drag in any direction or pinch to zoom.");
            pinch=new ScaleGestureDetector(activity,new ScaleGestureDetector.SimpleOnScaleGestureListener(){
                @Override public boolean onScale(ScaleGestureDetector detector){
                    zoom(detector.getScaleFactor(),detector.getFocusX(),detector.getFocusY());return true;
                }
            });
        }
        @Override protected void onSizeChanged(int w,int h,int oldw,int oldh){
            float width=Math.min(w-32f,(h-32f)*targetWidth/targetHeight);
            if(width<=0)return;
            float height=width*targetHeight/targetWidth;
            box.set((w-width)/2,(h-height)/2,(w+width)/2,(h+height)/2);
            base=Math.max(width/image.getWidth(),height/image.getHeight()); reset();
        }
        void reset(){if(base<=0)return;scale=base;x=box.centerX()-image.getWidth()*scale/2;y=box.centerY()-image.getHeight()*scale/2;invalidate();}
        void clamp(){x=Math.max(box.right-image.getWidth()*scale,Math.min(box.left,x));y=Math.max(box.bottom-image.getHeight()*scale,Math.min(box.top,y));}
        void zoom(float factor,float focusX,float focusY){
            if(base<=0||Float.isNaN(factor)||Float.isInfinite(factor))return;
            float next=Math.max(base,Math.min(base*6,scale*factor));
            float ratio=next/scale;x=focusX-(focusX-x)*ratio;y=focusY-(focusY-y)*ratio;scale=next;clamp();invalidate();
        }
        @Override protected void onDraw(Canvas canvas){
            super.onDraw(canvas);if(base<=0)return;
            int save=canvas.save();Path clip=new Path();float radius=Math.min(box.width(),box.height())*.24f;
            clip.addRoundRect(box,radius,radius,Path.Direction.CW);canvas.clipPath(clip);
            Matrix matrix=new Matrix();matrix.setScale(scale,scale);matrix.postTranslate(x,y);
            canvas.drawBitmap(image,matrix,paint);canvas.restoreToCount(save);
        }
        @Override public boolean onTouchEvent(MotionEvent event){
            pinch.onTouchEvent(event);
            int action=event.getActionMasked();
            if(action==MotionEvent.ACTION_DOWN){dragId=event.getPointerId(0);lastX=event.getX();lastY=event.getY();getParent().requestDisallowInterceptTouchEvent(true);}
            else if(action==MotionEvent.ACTION_POINTER_UP){
                int index=event.getActionIndex()==0?1:0;dragId=event.getPointerId(index);lastX=event.getX(index);lastY=event.getY(index);
            } else if(action==MotionEvent.ACTION_MOVE){
                int index=event.findPointerIndex(dragId);
                if(index>=0){float px=event.getX(index),py=event.getY(index);
                    if(event.getPointerCount()==1&&!pinch.isInProgress()){x+=px-lastX;y+=py-lastY;clamp();invalidate();}
                    lastX=px;lastY=py;
                }
            } else if(action==MotionEvent.ACTION_UP||action==MotionEvent.ACTION_CANCEL){dragId=-1;getParent().requestDisallowInterceptTouchEvent(false);}
            return true;
        }
        Bitmap render(){
            if(base<=0)throw new IllegalStateException("Preview not laid out");
            float cap=Math.min(1,1280f/Math.max(targetWidth,targetHeight));
            int width=Math.max(1,Math.round(targetWidth*cap)),height=Math.max(1,Math.round(targetHeight*cap));
            Bitmap output=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);
            Canvas canvas=new Canvas(output);canvas.drawColor(Color.BLACK);
            Matrix matrix=new Matrix();matrix.setScale(scale*width/box.width(),scale*height/box.height());
            matrix.postTranslate((x-box.left)*width/box.width(),(y-box.top)*height/box.height());
            canvas.drawBitmap(image,matrix,paint);return output;
        }
    }
}
