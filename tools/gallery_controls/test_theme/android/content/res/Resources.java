package android.content.res;
public class Resources {
 public Theme newTheme(){return new Theme();}
 public class Theme {
  public boolean inherited=false;public int style;public boolean forced;
  public void setTo(Theme other){inherited=other.inherited;style=other.style;forced=other.forced;}
  public void applyStyle(int value,boolean force){style=value;forced=force;}
 }
}
