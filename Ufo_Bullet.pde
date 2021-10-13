class UfoBullet extends GameObject {

  int timer;

  UfoBullet() {
    timer=60;
    lives = 1;
    location = new PVector(myUfo.location.x, myUfo.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);
    velocity.add(myUfo.velocity);
    size=10;
  }

  void show() {
    stroke(255);
    noFill();
    ellipse(location.x, location.y, size, size);
  }

  void act() {
    super.act();
    
    timer --;
    if (timer <=0) {
      lives=0;
    }
  }
}