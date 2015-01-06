//Snowflakes!

int thing=20;
PVector[] loc= new PVector[thing];
PVector[] v= new PVector [thing];
PVector[] a= new PVector [thing];
float[]sz= new float [thing];
float miniD= 4;
float maxD=10;

void setup () {
  size(displayWidth, displayHeight);
  for (int i=0; i<thing; i++) {
    sz[i]= random (miniD, maxD);
    loc[i]= new PVector (random(width), random(0, -height), map(sz[i], miniD, maxD, 10, 255));
    v[i]=new PVector (0, 1);
    a[i]= new PVector (0, 0.05);
  }
  noStroke();
}

void draw () {
  background(0);
  for (int i=0; i<thing; i++) {
    a[i].x=random(-0.05, 0.05);
    v[i].add(a[i]);
    loc[i].add(v[i]);
    fill(#FFFCFE);
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    if (loc[i].y-sz[i]/2>height) {
      loc[i].set(random(width), random(-height), -sz[i]/2);
      v[i].set(0, 1);
    }
  }
}

