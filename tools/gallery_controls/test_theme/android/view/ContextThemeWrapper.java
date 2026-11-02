package android.view;
public class ContextThemeWrapper extends android.content.Context {
 public ContextThemeWrapper(android.content.Context base,int theme){getTheme().setTo(base.getTheme());getTheme().applyStyle(theme,true);}
}
