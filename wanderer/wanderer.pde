PVector v;
PVector loc;
PVector a;

int sz=50;

void setup () {
  colorMode (HSB, 360, 100, 100, 100);
  size (displayWidth, displayHeight);
  loc= new PVector (0,0);
  v= PVector.random2D ();
  a= new PVector (-0.1,0.1);
  noStroke();
}


void draw () {
  background (#050505);
  fill(frameCount%360, 80, 60,80);
  v.add(a);

  loc.add(v);
  a.set(random(-0.1,0.1), random(-0.1,0.1));
 
  ellipse (loc.x, loc.y, sz, sz);

   if (loc.x  > width+sz/2) {
     loc.x = 0;
  }
  if (loc.x + sz/2 < 0) {
    loc.x = width+sz/2;
  } 
  if (loc.y -sz/2 > height) {
    loc.y = -sz/2;
  }
  if (loc.y + sz/2 < 0) {
    loc.y = height+sz/2;
  }
  
}
