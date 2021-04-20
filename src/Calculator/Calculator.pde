// Sophia Turner | Nov 2020
// Calculator for Programming I 2020

Button[] numButtons = new Button[10];
Button[] opButtons = new Button[16];
String dVal = "0.0";
String op = ""; 
float r = 0.0;
float l = 0.0;
float result = 0.0;
boolean left = true;
boolean col = true;

void setup() {
  size(700, 400);
  //also need lines at bottom
  numButtons[0] = new Button(400, 150, 100, 75, "0");
  numButtons[1] = new Button(0, 75, 100, 75, "1");
  numButtons[2] = new Button(100, 75, 100, 75, "2");
  numButtons[3] = new Button(200, 75, 100, 75, "3");
  numButtons[4] = new Button(300, 75, 100, 75, "4");
  numButtons[5] = new Button(400, 75, 100, 75, "5");
  numButtons[6] = new Button(0, 150, 100, 75, "6");
  numButtons[7] = new Button(100, 150, 100, 75, "7");
  numButtons[8] = new Button(200, 150, 100, 75, "8");
  numButtons[9] = new Button(300, 150, 100, 75, "9");
  opButtons[0] = new Button(600, 75, 100, 150, "C");
  opButtons[1] = new Button(600, 225, 100, 150, "=");
  opButtons[2] = new Button(500, 75, 100, 75, "+");
  opButtons[3] = new Button(500, 150, 100, 75, "-");
  opButtons[4] = new Button(500, 225, 100, 75, "x");
  opButtons[5] = new Button(500, 300, 100, 75, "÷");
  opButtons[6] = new Button(0, 225, 100, 75, "±");
  opButtons[7] = new Button(100, 225, 100, 75, "√x");
  opButtons[8] = new Button(200, 225, 100, 75, "sin");
  opButtons[9] = new Button(300, 225, 100, 75, "cos");
  opButtons[10] = new Button(400, 225, 100, 75, "tan");
  opButtons[11] = new Button(0, 300, 100, 75, ".");
  opButtons[12] = new Button(100, 300, 100, 75, "x²");
  opButtons[13] = new Button(200, 300, 100, 75, "^");
  opButtons[14] = new Button(300, 300, 100, 75, "Log");
  opButtons[15] = new Button(400, 300, 100, 75, "Ln");
}


void draw() {
  background(#146C3E);
  fill(0);
  
  for (int i = 0; i<width; i+=25) {
    if (i<26 | i>124 && i<176 | i>274 && i<326 | i>424 && i<476 | i>574 && i<626) {
      line(i, 375, i+15, 400);
    } else {
      line(i, 400, i+15, 375);
    }
  }

  updateDisplay();

  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
}

void updateDisplay() {
  fill(0);
  rect(0, 0, width, 75);
  
  if(col==true) {
  fill(lerpColor(#146C3E, 0, (((millis()/1000)%2==0)?millis():1000-millis())/1000.0));
    rect(width-20, 5, 10, 65); 
  }

  textSize(60);
  fill(#146C3E);
  textAlign(RIGHT, CENTER);
  PFont ayuthana; 
  ayuthana = createFont("ayuthaya.vlt", 48);
  textFont(ayuthana);

  text(dVal, width-25, 30);
}


void mousePressed() {
  println("L:" + l + " R:" + r + " Op:" + op);
  println("Result:" + result + " Left:" + left);

  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hover && dVal.length()<22) {
      handleEvent(numButtons[i].val, true);
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].hover) {
      handleEvent(opButtons[i].val, false);
    }
  }
} //end void mousePressed


void keyPressed() {
  println("Key: " + key + " KeyCode: " + keyCode);

  if (key == '0' && dVal.length()<22) {
    handleEvent("0", true);
  } else if (key == '1' && dVal.length()<22) {
    handleEvent("1", true);
  } else if (key == '2' && dVal.length()<22) {
    handleEvent("2", true);
  } else if (key == '3' && dVal.length()<22) {
    handleEvent("3", true);
  } else if (key == '4' && dVal.length()<22) {
    handleEvent("4", true);
  } else if (key == '5' && dVal.length()<22) {
    handleEvent("5", true);
  } else if (key == '6' && dVal.length()<22) {
    handleEvent("6", true);
  } else if (key == '7' && dVal.length()<22) {
    handleEvent("7", true);
  } else if (key == '8' && dVal.length()<22) {
    handleEvent("8", true);
  } else if (key == '9' && dVal.length()<22) {
    handleEvent("9", true);
  } else if (key == '+') {
    handleEvent("+", false);
  } else if (key == '-') {
    handleEvent("-", false);
  } else if (key == '*') {
    handleEvent("x", false);
  } else if (key == '/') {
    handleEvent("÷", false);
  } else if (key == 10 | key == '=') {
    handleEvent("=", false);
  } else if (key == 8) {
    handleEvent("C", false);
  } else if (key == '.') {
    handleEvent(".", false);
  }
}


String handleEvent(String val, boolean num) {
  if (left && num) { // left number
    if (dVal.equals("0.0")) {
      dVal = (val);
      l=float(dVal);
    } else {
      dVal+= (val);
      l=float(dVal);
    }
  } else if (!left && num) {
    if (dVal.equals("0.0")) {
      dVal=(val);
      r=float(dVal);
    } else {
      dVal += (val);
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    //clear variables
    dVal="0.0";
    result=0.0;
    left=true;
    r=0.0;
    l=0.0;
    op="";
  } else if (val.equals("+")) {
    //Determine if calculator is operating on left or right
    if (!left) {
      performCalculation();
    } else {
      op = "+";
      left = false;
      dVal="0.0";
    }
  } else if (val.equals("-")) {
    if (!left) {
      performCalculation();
    } else {
      op = "-";
      left = false;
      dVal="0.0";
    }
  } else if (val.equals("x")) {
    if (!left) {
      performCalculation();
    } else {
      op = "x";
      left = false;
      dVal="0.0";
    }
  } else if (val.equals("÷")) {
    if (!left) {
      performCalculation();
    } else {
      op = "÷";
      left = false;
      dVal="0.0";
    }
  } else if (val.equals("±")) {
    if (left) {
      l *= -1;
      dVal = str(l);
    } else {
      r *= -1;
      dVal = str(r);
    }
  } else if (val.equals("=")) {
    performCalculation();
  } else if (val.equals("√x")) {
    if (left) {
      op = "√x";
      performCalculation();
    }
  } else if (val.equals("sin")) {
    if (left) {
      op = "sin";
      performCalculation();
    }
  } else if (val.equals("cos")) {
    if (left) {
      op = "cos";
      performCalculation();
    }
  } else if (val.equals("tan")) {
    if (left) {
      op = "tan";
      performCalculation();
    }
  } else if (val.equals(".") && !dVal.contains(".")) {
    dVal += (val);
  } else if (val.equals("x²")) {
    if (left) {
      op = "x²";
      performCalculation();
    }
  } else if (val.equals("^")) {
    op = "^";
    left = false;
    dVal= "0.0";
  } else if (val.equals("Log")) {
    op = "Log";
    performCalculation();
  } else if (val.equals("Ln")) {
    op = "Ln";
    performCalculation();
  }

  return val;
} // end String handleEvent


void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("÷")) {
    result = l / r;
  } else if (op.equals("√x")) {
    result = sqrt(l);
  } else if (op.equals("sin")) {
    result = sin(l);
  } else if (op.equals("cos")) {
    result = cos(l);
  } else if (op.equals("tan")) {
    result = tan(l);
  } else if (op.equals("x²")) {
    result = sq(l);
  } else if (op.equals("^")) {
    result = pow(l, r);
  } else if (op.equals("Log")) {
    result = log(l)/log(10);
  } else if (op.equals("Ln")) {
    result = log(l);
  }
  l = result;
  dVal = str(result);
  left = true;
}
