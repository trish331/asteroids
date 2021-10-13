class Ufo extends GameObject {
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
  }
}
