class PowerUp {
  //member variables
  int x, y, speed, rad, pu;
  String[] puInfo = {"HP", "Lasers", ""};

  //constructor
  PowerUp() {
    x = 0;
    y = 0;
    speed = int(random(1,4));
    
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
    fill(0, 250, 0);
    ellipse(x, y, 20, 20);
  }
}
