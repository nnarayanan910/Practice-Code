                                                                          //creating petal class.
class  petal { 
  PVector v, loc, a;                                                      //Create values that control movement
  float theta;                                                            //theta controls angle of the petal
  PImage petal;                                                           // Create image for picture


  petal () {
    v= new PVector(random(3, 5), random(-5, -2));                         //initialize velocity so that v.y is negative and v.x is positive
    loc=new PVector(width/2-100,height/2-50);                             //initialize location at center of flower.
    a= new PVector ();                                                    //initialize acceleration
    theta= random(PI, 3*PI/2);                                           //Initialize theta so that angle is towards top right corner
    petal= loadImage ("petal.png");                                       //create image for individual petals
  }

  void create () {pushMatrix();
    pushMatrix();
    translate(loc.x, loc.y);                                              //Makes the petals move
    rotate(theta);                                                        //rotates it by angle theta
    image(petal, 0, 0, petal.width, petal.height);                        //displays the image at a location with a size
    popMatrix();
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

