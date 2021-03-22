class Star {
  //member variables
  float x, y, speed;
  color c;

  //constructor
  Star(color c) {
    x = random(width);
    y = 0;
    speed = 2;
    this.c = c;
  }

  void travel() {
    y+= speed;
  }

  boolean reachedBottom() {
    if (y>height) {
      return true;
    } else {
      return false;
    }
  }

  //member methods
  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, 2, 2);
  }
}
