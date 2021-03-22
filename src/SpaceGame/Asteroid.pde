class Asteroid {
  //member variables
  int x, y, speed, hp, rad;
  

  //constructor
  Asteroid(int x, int y) {
    this.x=x;
    this.y=y;
    speed = int(random(1, 4));
    hp = 3;
    rad = 18;
  }

  boolean reachedBottom() {
    if (y>height) {
      return true;
    } else {
      return false;
    }
  }

  void move() {
    y+=speed;
  }

  //member methods
  void display() {
    fill(#625545);
    quad(x-16, y-1, x+2, y-14, x+16, y+1, x-2, y+14);
    quad(x-9, y-10, x+10, y-10, x+11, y+11, x-10, y+9);
    fill(0);
    ellipse(x, y, 5, 5);
  }
  
    //col dect rock vs laser
  boolean laserIntersect(Projectile laser) {
    float distance = dist(x, y, laser.x, laser.y);
    if(distance < rad + laser.rad) {
      return true; 
    } else {
      return false;
    }
  }
}
