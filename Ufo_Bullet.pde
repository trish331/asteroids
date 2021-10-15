class UfoBullet extends GameObject {

  int timer;
int shottimer;
  UfoBullet() {
    timer=60;
    lives = 1;
    location = new PVector(myUfo.location.x, myUfo.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);
    velocity.add(myUfo.velocity);
    size=10;
    shottimer =0;
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
    if (lives==0){
       myObjects.add(new Bullet());
      shottimer=0;
    }
  }
}

//class UfoBullet extends GameObject {

//  int timer;

//  UfoBullet() {
//    timer=80;
//    lives = 1;
//    location = new PVector(myShip.location.x, myShip.location.y);
//    velocity = new PVector(myShip.direction.x, myShip.direction.y);
//    velocity.setMag(10);
//    velocity.add(myShip.velocity);
//    size=10;
//  }

//  void show() {
//    stroke(255);
//    noFill();
//    ellipse(location.x, location.y, size, size);
//  }

//  void act() {
//    super.act();
    
//    timer --;
//    if (timer <=0) {
//      lives=0;
//    }
//  }
//}
