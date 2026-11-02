package app.morphe.extension.instagram.patches.instants;
import android.view.*;
import android.widget.ImageButton;
import X.XPO;
import X.Zss;

/** Observe the unified fragment's camera/consumption mode before each draw. */
public final class GalleryIconScope implements ViewTreeObserver.OnPreDrawListener {
    private final XPO fragment;
    private final View root;
    private GalleryIconScope(XPO owner,View view){fragment=owner;root=view;}
    public static void watch(XPO owner,View view){
        view.getViewTreeObserver().addOnPreDrawListener(new GalleryIconScope(owner,view));
    }
    public boolean onPreDraw(){
        ImageButton button=InstantsGalleryUi.current();
        if(button!=null && InstantsGalleryUi.owns(fragment.A03)){
            boolean camera=fragment.isResumed() && root.getWindowToken()!=null
                && fragment.A0C.getValue()==Zss.A02;
            int visibility=camera?View.VISIBLE:View.GONE;
            if(button.getVisibility()!=visibility)button.setVisibility(visibility);
        }
        return true;
    }
}
