PVector v, loc,a;
int sz1, sz2;

void setup () {
  colorMode (HSB, 360, 100, 100, 100);
  size (displayWidth, displayHeight);
  loc=new PVector (50,50);
  v= PVector.random2D();
  a=new PVector (0.1,0.1);
  sz1=50;  
  sz2=10;
  noCursor ();
}

void draw () {
  background(#030303);
  ellipse(loc.x, loc.y, sz1, sz1);
  v.add(a);
  loc.add(v);
  ellipse(mouseX, mouseY, sz2, sz2);
  if (dist(mouseX,mouseY,loc.x,loc.y)<sz1/2) {
    fill(frameCount%360, 80, 60,80);
    v.mult(-1);
  }
  if (loc.x+sz1/2>width || loc.x-sz1/2<0) {
    v.x*=-1;
  }
  if (loc.y+sz1/2>height || loc.y-sz1/2<0) {
    v.y*=-1;
  }
}

