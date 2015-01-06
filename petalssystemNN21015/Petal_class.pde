                                                                          //creating petal class.
class  petal { 
  PVector v, loc, a;                                                      //Create values that control movement
  float speed;
  PImage petal;                                                           // Create image for picture


  petal () {
    v= new PVector(random(3, 5), random(-5, -2));                         //initialize velocity so that v.y is negative and v.x is positive
    loc=new PVector(width/2-100,height/2-50);                             //initialize location at center of flower.
    a= new PVector ();                                                    //initialize acceleration
    petal= loadImage ("petal.png");                                      //create image for individual petals
  }

  void create () {
    image(petal, loc.x, loc.y, petal.width, petal.height);                //displays the image at a location with a size
  }

  void move () {                                                          //allow each petal to move
    v.add(a);                                                             //increase velocity by acceleration
    loc.add(v);                                                           //increase location by velocity
  }

  boolean death () {
    if (loc.y>height || loc.y+200<0 || loc.x>width || loc.x<0) {             //If the petal moves off the screen
      return true;                                                            //petal "dies"
    } else {
      return false;
    }
  }
}

