// Space Game | December 2020
// by Sophia Turner

SpaceShip s1;
ArrayList<Star> stars;
ArrayList<Asteroid> asteroids;
ArrayList<Projectile> lasers;
ArrayList<EnemyShip> enemies;
ArrayList<EnemyProjectile> enemyLasers;
ArrayList<PowerUp> pUps;
int score, eX;
boolean play;
Timer asteroidTimer, puTimer, enemyTimer, laserTimer;

void setup() {
  size(400, 400);
  s1 = new SpaceShip(#195ECB);
  s1.x = width/2;
  stars = new ArrayList();
  asteroids = new ArrayList();
  lasers = new ArrayList();
  enemies = new ArrayList();
  enemyLasers = new ArrayList();
  pUps = new ArrayList();
  asteroidTimer = new Timer(int(random(2000, 4000)));
  enemyTimer = new Timer(int(random(2000, 4000)));
  puTimer = new Timer(int(random(10000, 50000)));
  laserTimer = new Timer(1000);
  score = 0;
  play = false;
  asteroidTimer.start();
  puTimer.start();
  enemyTimer.start();
}

void draw() {
  noCursor();
  println("keyCode: " + keyCode + ", " + play);

  //game play
  if (!play) {
    startScreen();
  } else {
    background(0);
    stars.add(new Star(250));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.travel();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }

    for (int i = 0; i < lasers.size(); i++) {
      Projectile laser = lasers.get(i);
      laser.display();
      laser.fire();
      for (int j = 0; j < asteroids.size(); j++) {
        Asteroid asteroid = asteroids.get(j);
        if (asteroid.laserIntersect(laser)) {
          asteroid.hp -=1;
          lasers.remove(laser);
          score+=1;
          if (asteroid.hp<1) {
            asteroids.remove(asteroid);
            score += 2;
          }
        }
      }
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }

    for (int i = 0; i < enemyLasers.size(); i++) {
      EnemyProjectile enemyLaser = enemyLasers.get(i);
      enemyLaser.display();
      enemyLaser.fire();
      if (enemyLaser.reachedBottom()) {
        enemyLasers.remove(enemyLaser);
      }
    }

    for (int i = 0; i < enemies.size(); i++) {
      EnemyShip enemy = enemies.get(i);
      enemy.display();
      enemy.move();
      for (int j = 0; j < lasers.size(); j++) {
        Projectile laser = lasers.get(j);
        if (enemy.laserIntersect(laser)) {
          enemy.hp -=1;
          lasers.remove(laser);
          score+=1;
          if (enemy.hp<1) {
            enemies.remove(enemy);
            score += 2;
          }
        }
      }
    }

    s1.display(s1.x, height-83);
    if (s1.hp < 1) {
      s1.lives -=1;
      s1.hp = 25;
    }
    for (int j = 0; j < enemyLasers.size(); j++) {
      EnemyProjectile enemyLaser = enemyLasers.get(j);
      if (s1.shipIntersect(enemyLaser)) {
        s1.hp -=1;
        enemyLasers.remove(enemyLaser);
        score+=1;
      }
    }

    if (asteroidTimer.isFinished()) {
      asteroids.add(new Asteroid(int(random(width)), 0));
      asteroidTimer.start();
    }

    if (puTimer.isFinished()) {
      pUps.add(new PowerUp());
      puTimer.start();
    }

    if (enemyTimer.isFinished()) {
      enemies.add(new EnemyShip(int(random(width)), 0, #017109));
      enemyTimer.start();
    }

    if (laserTimer.isFinished()) {
      enemyLasers.add(new EnemyProjectile(eX, 0, #009B18));
      laserTimer.start();
    }

    for (int i = 0; i < asteroids.size(); i++) {
      Asteroid asteroid = asteroids.get(i);
      asteroid.display();
      asteroid.move();
      if (s1.asteroidIntersect(asteroid)) {
        s1.hp-=asteroid.hp;
        asteroids.remove(asteroid);
        score += asteroid.hp;
      }
      if (asteroid.reachedBottom()) {
        asteroids.remove(asteroid);
      }
    }

    infoPanel();

    //Game Over logic
    if (s1.lives<0) {
      play = false;
      gameOver();
    }
  }
}

void keyPressed() {
  //use spacebar for fire
  if (keyCode == 32) {
    lasers.add(new Projectile(s1.x-1, s1.y, #F52020));
    play = true;
  }
  //move with arrow keys
  if (keyCode == 39) {
    s1.x+=s1.speed;
  } else if (keyCode == 37) {
    s1.x-=s1.speed;
  }
}

void startScreen() {
  background(0);
  textAlign(CENTER);
  text("Welcome to Space Game!", width/2, height/2);
  text("Press Space Bar to Start", width/2, height/2+20);
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  text("Game Over", width/2, height/2);
  text("Score: " + score, width/2, height/2+20);
  noLoop();
}

void infoPanel() {
  fill(120, 120);

  textAlign(CENTER);
  rect(0, height-40, width, 40);
  fill(0, 120);
  textSize(15);
  fill(200);
  text("Lives: " + s1.lives, width/6, height-18);
  text("Health: " + s1.hp, width/2, height-18);
  text("Score: " + score, 5*width/6, height-18);
}
