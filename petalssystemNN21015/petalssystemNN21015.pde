PImage grass, flower;                                         //Image for background grass
ArrayList <petal> Petals= new ArrayList <petal>();            //Initialize array list of petals. Note that Petals refers to the system while petal is the class.

void setup () {
  size (displayWidth, displayHeight);                         //set size of program
  grass=loadImage("grass.jpg");                               //load grass background
  flower=loadImage("daisy-flower.png");                       //load flower
  noCursor();
}

void draw () {
  background (0);
  image(grass, 0, 0, displayWidth, displayHeight);
  image(flower, 0, 0, displayWidth, displayHeight);           //creating flower background
  if (mousePressed) {                                         //generating new petals with a random velocity as defined in class if mouse is pressed
    Petals.add(new petal());
  }

  for (int i=Petals.size ()-1; i>=0; i--) {                    //select petal p from system of petals
    petal p= Petals.get(i);
    p.create();                                               //create petals
    p.move();                                                 //move petals
    if (p.death()) {
      Petals.remove(i);                                       //remove petals if they pass the screen boundaries.
    }
  }
}

