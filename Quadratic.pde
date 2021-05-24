float a, b, c;
int scene = 1;
String text = "";
boolean enterPressed = false;
public void setup() {
  size(400, 400);
}

public void draw() {
  background(0);
  switch(scene) {
    case (1):
    Window[] aW = new Window[3];
    aW[0] = new Window(200, 200, "What is the value of 'a'?", 14);
    aW[1] = new Window(200, 275, text, 30);
    aW[2] = new Window(200, 350, "Press Enter when done", 12);
    for (Window a : aW) a.draw();
    if (enterPressed == true && !text.equals("")) {
      a = Float.parseFloat(text);
      text = "";
      enterPressed = false;
      scene = 2;
    }
    break;
    case (2):
    Window[] bW = new Window[3];
    bW[0] = new Window(200, 200, "What is the value of 'b'?", 14);
    bW[1] = new Window(200, 275, text, 30);
    bW[2] = new Window(200, 350, "Press Enter when done", 12);
    for (Window b : bW) b.draw();
    if (enterPressed == true && !text.equals("")) {
      b = Float.parseFloat(text);
      text = "";
      enterPressed = false;
      scene = 3;
    }
    break;
    case (3):
    Window[] cW = new Window[3];
    cW[0] = new Window(200, 200, "What is the value of 'c'?", 14);
    cW[1] = new Window(200, 275, text, 30);
    cW[2] = new Window(200, 350, "Press Enter when done", 12);
    for (Window c : cW) c.draw();
    if (enterPressed == true && !text.equals("")) {
      c = Float.parseFloat(text);
      text = "";
      enterPressed = false;
      scene = 4;
    }
    break;
    case (4):
    double var1 = ((-1 * b) + (sqrt((b*b) - (4 * a * c)))) / (2*a);
    double var2 = ((-1 * b) - (sqrt((b*b) - (4 * a *c )))) / (2*a);
    Window answer = new Window(200, 200, String.valueOf(var1), 30);
    Window answer2 = new Window(200, 300, String.valueOf(var2), 30);
    answer.draw();
    answer2.draw();
    if (enterPressed == true) {
      enterPressed = false;
      scene = 1;
    }
    break;
  }
}

public void keyReleased() {
  switch (key) {
  case '1': 
    text += "1";
    break;
  case '2': 
    text += "2";
    break;
  case '3': 
    text += "3";
    break;
  case '4': 
    text += "4";
    break;
  case '5': 
    text += "5";
    break;
  case '6': 
    text += "6";
    break;
  case '7': 
    text += "7";
    break;
  case '8': 
    text += "8";
    break;
  case '9': 
    text += "9";
    break;
  case '0': 
    text += "0";
    break;
  case '\b': 
    if (text.length() > 0) text = text.substring(0, text.length() - 1);
    break;
  case '\n':  
    enterPressed = true;
    break;
  case '-':
    text += "-";
    break;
  case '.':
    text += ".";
    break;
  }
}
