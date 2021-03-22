class SpaceShip {
  //member variables
  int x, y, hp, lives, speed, rad;
  color c;

  //constructor 
  SpaceShip(color c) {
    hp = 25;
    lives = 3;
    speed = 20;
    rad = 25;
    this.c = c;
  }

  //member methods
  void display(int x, int y) {
    this.x=x;
    this.y=y;
    //point
    fill(100, 100, 100);
    triangle(x-10, y-25, x, y-49, x+10, y-25);
    rect(x-10, y-25, 20, 10);
    noStroke();
    rect(x-10, y-25, 20, 1);
    //surround point
    fill(175, 0, 0);
    noStroke();
    quad(x-13, y-10, x-20, y-5, x-20, y-25, x-13, y-35);
    triangle(x-20, y-25, x-7, y-52, x-13, y-30);
    quad(x+13, y-10, x+20, y-5, x+20, y-25, x+13, y-35);
    triangle(x+20, y-25, x+7, y-52, x+13, y-30);
    //body
    fill(c);
    noStroke();
    rect(x-13, y-15, 26, 50, 3);
    //wings
    fill(175, 0, 0);
    noStroke();
    quad(x-13, y-5, x-27, y+5, x-29, y+15, x-13, y+5);
    quad(x+13, y-5, x+27, y+5, x+29, y+15, x+13, y+5);
    quad(x-13, y+10, x-35, y+25, x-37, y+30, x-13, y+30);
    quad(x+13, y+10, x+35, y+25, x+37, y+30, x+13, y+30);
    //engines
    fill(175, 100, 0);
    rect(x-8, y+35, 5, 7);
    rect(x+3, y+35, 5, 7);
  }


  //col dect rock vs ship
  boolean asteroidIntersect(Asteroid asteroid) {
    float distance = dist(x, y, asteroid.x, asteroid.y);
    if (distance < rad + asteroid.rad) {
      return true;
    } else {
      return false;
    }
  }

  //col dect enemy laser vs ship
  boolean shipIntersect(EnemyProjectile laser) {
    float distance = dist(x, y, laser.x, laser.y);
    if (distance < rad + laser.rad) {
      return true;
    } else {
      return false;
    }
  }
}
