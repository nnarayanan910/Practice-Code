PImage grass, flower;                                         //Image for background grass
ArrayList <petal> Petals= new ArrayList <petal>();            //Initialize array list of petals. Note that Petals refers to the system while petal is the class.

void setup () {
  grass=loadImage("grass.jpg");                               //load grass background
  size (grass.width,grass.height);                           //set size of program
  imageMode(CENTER);                                           //Center images
  flower=loadImage("daisy-flower.png");                       //load flower
  noCursor();
}

void draw () {
  background (grass);
  image(flower, width/2, height/2, width,height);              //creating flower background
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

