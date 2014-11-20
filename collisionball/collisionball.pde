PVector v1, loc1,a1;
PVector v2, loc2,a2;
int sz1, sz2;

void setup () {
  colorMode (HSB, 360, 100, 100, 100);
  size (500, 500);
  loc1=new PVector (50,50);
  v1= PVector.random2D();
  a1=new PVector (0,0);
  loc2=new PVector (width-50,height-50);
  v2= PVector.random2D();
  a2=new PVector (0,0);
  sz1=50;  
  sz2=50;
}

void draw () {
  background(#030303);
  ellipse(loc1.x, loc1.y, sz1, sz1);
  ellipse(loc2.x, loc2.y, sz2, sz2);
  v1.add(a1);
  loc1.add(v1);
  v2.add(a2);
  loc2.add(v2);
  if (loc1.dist(loc2)<sz1/2+sz2/2) {
    fill(frameCount%360, 80, 60,80);
    if (loc1.x<loc2.x) {
      v1.x=-abs(v1.x);
      v2.x=abs(v2.x);
    } else {
      v1.x=abs(v1.x);
      v2.x=-abs(v2.x);
    }
    if (loc1.y<loc2.y) {
      v1.y=-abs(v1.x);
      v2.y=abs(v2.x);
  } else {
    v1.y=abs(v1.y);
    v2.y=-abs(v2.y);
  }
  }
  if (loc1.x+sz1/2>width || loc1.x-sz1/2<0) {
    v1.x*=-1;
  }
  if (loc1.y+sz1/2>height || loc1.y-sz1/2<0) {
    v1.y*=-1;
  }
  if (loc2.x+sz1/2>width || loc2.x-sz2/2<0) {
    v2.x*=-1;
  }
  if (loc2.y+sz1/2>height || loc2.y-sz2/2<0) {
    v2.y*=-1;
  }
}

