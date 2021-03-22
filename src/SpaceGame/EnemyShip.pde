class EnemyShip {
  //member variables
  int x, y, hp, xspeed, rad;
  color c;

  //constructor 
  EnemyShip(int x, int y, color c) {
    this.x=x;
    this.y=y;
    hp = 5;
    xspeed = int(random(1, 2));
    rad = 20;
    this.c = c;
    eX = x;
  }

  boolean reachedBottom() {
    if (y>height) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    x+=xspeed;
    if (x>width-20 || x<20) {
      xspeed*=-1;
    }
  }


  //member methods
  void display() {
    fill(c);
    rect(x, y, 10, 20);
    quad(x, y+20, x, y+10, x-15, y, x-5, y+20);
    quad(x+10, y+20, x+10, y+10, x+25, y, x+15, y+20);
    triangle(x-5, y+20, x+15, y+20, x+5, y+30);
    rect(x-3, y+22, 1, 5);
    rect(x+12, y+22, 1, 5);
    triangle(x-3, y-5, x+13, y-5, x+5, y+7);
    fill(0);
    quad(x, y+20, x+2, y+23, x+8, y+23, x+10, y+20);
  }

  //col dect laser vs ship
  boolean laserIntersect(Projectile laser) {
    float distance = dist(x, y, laser.x, laser.y);
    if (distance < rad + laser.rad) {
      return true;
    } else {
      return false;
    }
  }
}
