class Ship extends GameObject {
  //1. Instance Variables

  PVector direction;
  int shotTimer, threshold;
  //2. Constructor(s)
  Ship () {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector (0, 0);
    direction = new PVector(0, -0.1);
    shotTimer =0;
    threshold=30;
  }
  //3. Behaviour functions
  void show() {
    pushMatrix();
    translate (location.x, location.y);
    rotate(direction.heading());
    noFill();
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0);



    popMatrix();
  }

  void act() {
    super.act();
    if(velocity.mag()>5)
    velocity.setMag(5);
    
    shotTimer++;
    
    if (upkey) velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate(-radians(5));
    if (rightkey) direction.rotate(radians(5));
    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer=0;
    }
  }
}
