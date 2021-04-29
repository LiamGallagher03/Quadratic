int a, b, c;
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
    if (enterPressed == true) {
      a = Integer.parseInt(text);
      text = "";
      scene = 2;
    }
    break;
    case (2):
    Window[] bW = new Window[3];
    bW[0] = new Window(200,200, "What is the value of 'b'?", 14);
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
  }
}
