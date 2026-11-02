package app.morphe.extension.instagram.patches.instants;
public class ThemeRegression {
 public static void main(String[] args){
  android.app.Activity activity=new android.app.Activity();
  activity.getTheme().inherited=true;activity.getTheme().style=12345;
  android.content.Context context=GalleryCrop.cropContext(activity);
  if(context==activity||context.getTheme().inherited||context.getTheme().style!=0x1030009||!context.getTheme().forced)throw new AssertionError("Crop theme not isolated");
  if(!activity.getTheme().inherited||activity.getTheme().style!=12345)throw new AssertionError("Parent theme was modified");
  System.out.println("PASS: actual cropContext clears inherited attributes and applies platform theme in its own context");
 }
}
