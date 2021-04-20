int x, y; //global variables - always in memory while the app runs

void setup() {
  size(400, 400);
  frameRate(10);
  //start coordinates
  x=0;
  y=0;
}

void draw() {
  fill(0);
  drawName();
  noLoop();
}

//draw lines to the right
void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x=x+(rep);
}

//draw lines to the left
void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x=x-rep;
}

//draw lines up
void moveUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y=y-rep;
}

//draw lines down
void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y=y+rep;
}

//draw diagonal lines rigth/up
void diagonalRightUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y-i);
  }
  x=x+rep;
  y=y-rep;
}

//draw diagonal lines right/down
void diagonalRightDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y+i);
  }
  x=x+rep;
  y=y+rep;
}

//draw diagonal lines left/up
void diagonalLeftUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y-i);
  }
  x=x-rep;
  y=y-rep;
}

//draw diagonal lines left/down
void diagonalLeftDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y+i);
  }
  x=x-rep;
  y=y+rep;
}

void drawName() {
  //S
  moveRight(50);
  moveDown(20);
  moveLeft(35);
  diagonalLeftDown(5);
  moveDown(35);
  diagonalRightDown(5);
  moveRight(30);
  diagonalRightDown(5);
  moveDown(35);
  diagonalLeftDown(5);
  moveLeft(35);
  //O
  moveRight(65);
  moveRight(35);
  diagonalRightUp(5);
  moveUp(80);
  diagonalLeftUp(5);
  moveLeft(35);
  diagonalLeftDown(5);
  moveDown(80);
  diagonalRightDown(5);
  //P
  moveRight(65);
  moveUp(85);
  diagonalRightUp(5);
  moveRight(35);
  diagonalRightDown(5);
  moveDown(35);
  diagonalLeftDown(5);
  moveLeft(35);
  diagonalLeftUp(5);
  //H
  diagonalRightDown(5);
  moveRight(65);
  moveUp(45);
  moveDown(90);
  moveUp(45);
  moveRight(35);
  moveUp(45);
  moveDown(90);
  //I
  moveRight(25);
  moveRight(60);
  moveLeft(30);
  moveUp(90);
  moveLeft(30);
  moveRight(60);
  //A
  moveRight(40);
  moveLeft(30);
  moveDown(90);
  moveUp(90);
  moveRight(45);
  moveDown(90);
  moveUp(45);
  moveLeft(45);
}
