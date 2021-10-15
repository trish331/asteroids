class Ufo extends GameObject {
  int shotTimer;
  Ufo() {
    lives =1;
    location= new PVector (random(0, width), random(0, height));
    velocity = new PVector (0, 1);
    velocity.rotate (random(0, TWO_PI));
    size = 100;
  }

  Ufo (int s, float x, float y) {
    lives=1;
    location = new PVector (x, y);
    velocity = new PVector (0, 1);
    velocity.rotate (random(0, TWO_PI));
    size=s;
  }

  void show () {
    noFill();
    stroke(255);
    rect(location.x, location.y, size, size);
  }

  void act () {
    super.act();

    int i = 0;
    while (i <  myObjects.size()) {
      GameObject myObj= myObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(location.x, location.y, myObj.location.x, myObj.location.y)<=size/2 + myObj.size) {
          myObj.lives =0;
          lives=0;
        }
      }
      i++;
    }
    if (velocity.mag()>5)
      velocity.setMag(5);

    shotTimer++;
  }
}


//class Ufo extends GameObject {
//  //1. Instance Variables

//  PVector direction;
//  int shotTimer, threshold;
//  //2. Constructor(s)
//  Ufo () {
//    lives = 3;
//    location = new PVector(width/2, height/2);
//    velocity = new PVector (0, 0);
//    direction = new PVector(0, -0.1);
//    shotTimer =0;
//    threshold=30;
//  }
//  //3. Behaviour functions
//  void show() {
//    pushMatrix();
//    translate (location.x, location.y);
//    rotate(direction.heading());
//    noFill();
//    stroke(255);
//    triangle(-25, -12.5, -25, 12.5, 25, 0);



//    popMatrix();
//  }

//  void act() {
//    super.act();
//    if (velocity.mag()>5)
//      velocity.setMag(5);

//    shotTimer++;
//  }
//}

//class Ufo extends GameObject {
//  //1. Instance Variables

//  PVector direction;
//  int shotTimer, threshold;
//  //2. Constructor(s)
//  Ufo () {
//    lives = 3;
//    location = new PVector(width/2, height/2);
//    velocity = new PVector (0, 0);
//    direction = new PVector(0, -0.1);
//    shotTimer =0;
//    threshold=30;
//  }
//  //3. Behaviour functions
//  void show() {
//    pushMatrix();
//    translate (location.x, location.y);
//    rotate(direction.heading());
//    noFill();
//    stroke(255);
//    size =100;
//  square (size, size, 200);



//    popMatrix();
//  }

//  void act() {
//    super.act();
//    if (velocity.mag()>5)
//      velocity.setMag(5);

//    shotTimer++;

//    if (upkey) {
//      velocity.add(direction);
//      myObjects.add(new Fire());
//      myObjects.add(new Fire());
//      myObjects.add(new Fire());
//    }
//    if (downkey) velocity.sub(direction);
//    if (leftkey) direction.rotate(-radians(5));
//    if (rightkey) direction.rotate(radians(5));
//    if (spacekey && shotTimer >= threshold) {
//      myObjects.add(new Bullet());
//      shotTimer=0;
//    }
//  }
//}
