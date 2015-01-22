//Snowflakes!

int thing=50;
PVector[] loc= new PVector[thing];
PVector[] v= new PVector [thing];
float[] theta= new float [thing];

void setup () {

  for (int i=0; i<thing; i++) {
    loc[i]= new PVector (random(width), random(0, -height));
    v[i]=PVector. random2D ();
     theta[i] = new float (random(TWO_PI));
  }
}

void draw () {
  background(0);
  for (int i=0; i<thing; i++) {
    loc[i].add(v[i]);
     pushMatrix();
      translate(loc[i].x, loc[i].y);                                             
      rotate(theta);
      fill(random(255), random(255), random(255));
      rect(0, 0, 10, 10);
      popMatrix();
    if (loc[i].y>height) {
      loc[i].set(random(width), random(-height));
          

    }
  }
}

