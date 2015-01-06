PImage petal;
void setup() {
  imageMode(CENTER);
  size(800, 600);
  background(0);
  petal = loadImage("petal.png");
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotate(random(TWO_PI));
  image(petal, 0, 0);
}

