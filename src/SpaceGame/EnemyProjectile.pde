class EnemyProjectile {

  //member variables

  int x, y, speed, rad;

  color c;


  //constructor
  EnemyProjectile(int x, int y, color c) {
    this.x=x;
    this.y = y;
    speed = -5;
    rad = 1;
    this.c = c;
  }

  void fire() {
    y+=speed;
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
    fill(c);
    noStroke();
    rect(x, y, 2, 8);
  }
}
