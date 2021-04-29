public class Window{ 
  int x, y, fontSize;
  String text;
  color textColor;
  public Window(int x, int y, String text, int fontSize) {
    this.x = x;
    this.y = y;
    this.text = text;
    this.textColor = #FFFFFF;
    this.fontSize = fontSize;
  }
  
  public void draw() {
   textSize(fontSize);
    fill(textColor);
   textAlign(CENTER);
   text(text, x, y);
  }
}
