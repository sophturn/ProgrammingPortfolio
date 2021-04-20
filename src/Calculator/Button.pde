class Button {
  //Member variables - what make the button a button
  int x, y, w, h;
  color c1, c2;
  String val;
  boolean hover;

  //Contructor - how to make the button
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal) {
    x=tempX;
    y=tempY;
    w=tempW;
    h=tempH;
    c1=#146C3E;
    c2=#D39531;
    val = tempVal;
    hover=false;
  }

  //Display Method - visuals
  void display() {
    if (hover) {
      fill(c2);
    } else {
      fill(115);
    }
    rect(x, y, w, h);
    fill(c1);
    textAlign(CENTER, CENTER);
    textSize(50);
    PFont ayuthana; 
    ayuthana = createFont("ayuthaya.vlt", 48);
    textFont(ayuthana);
    text(val, (w/2)+x, (h*450/1000)+y);
  }

  //Hover Method - how to know if the user is interacting with the button
  void hover() {
    hover = (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h);
  }
}
