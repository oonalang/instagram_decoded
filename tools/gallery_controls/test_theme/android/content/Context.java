package android.content;import android.content.res.Resources;
public class Context {private final Resources resources=new Resources();private final Resources.Theme theme=resources.newTheme();public Resources getResources(){return resources;}public Resources.Theme getTheme(){return theme;}}
