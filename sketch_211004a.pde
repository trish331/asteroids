//Tricia Sun
//Asteroids


//Variables
boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
ArrayList <GameObject> myObjects;
//setup

//gif variables
PImage [] gif;
int numberOfFrames;
int f;

// mode framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE =3;
final int GAMEOVER =4;
final int RESET = 5;

void setup () {
  size (800, 600);
  rectMode(CENTER);
  imageMode(CENTER);
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
}

void draw () {
  background(0);

  int i = 0;
  while (i <  myObjects.size()) {
    GameObject myObj= myObjects.get(i);
    myObj.show();
    myObj.act();

    if (myObj.lives ==0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }
}

void keyPressed() {
  if (keyCode ==UP) upkey = true;
  if (keyCode ==DOWN) downkey = true;
  if (keyCode ==LEFT) leftkey = true;
  if (keyCode ==RIGHT) rightkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased() {
  if (keyCode ==UP) upkey = false;
  if (keyCode ==DOWN) downkey = false;
  if (keyCode ==LEFT) leftkey = false;
  if (keyCode ==RIGHT) rightkey = false;
  if (key == ' ') spacekey = false;
}
