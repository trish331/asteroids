class UfoBullet extends GameObject {
  int timer;
  UfoBullet () {
    timer = 100;
    size=10;
    location= new PVector(location.x, location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.setMag(15);
  }
  void show() {
    fill(#00E2E8);

    ellipse(location.x, location.y, size, size);
  }
  void act() {
    location.add(velocity);

    if (dist(location.x, location.y, myShip.location.x, myShip.location.y)<size/2 + myShip.size/2) {
      lives=0;
      lives = lives-1;
    }
    timer--;
    if (timer==0) {

      lives=0;
    }
  }
}
