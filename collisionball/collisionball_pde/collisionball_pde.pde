int thing=15;
PVector[]v= new PVector[thing];
PVector[]loc= new PVector[thing];
PVector[]a= new PVector[thing];
float[]sz= new float[thing];

void setup () {
  size (displayWidth, displayHeight);
  colorMode (HSB, 360, 100, 100, 100);
  for (int i=0, i<thing, i++) {
  loc[i]=new PVector (random(width), random(height));
  v[i]= PVector.random2D();
  a[i]=new PVector (0,0);
  sz[i]=random(5,40);  
  }
}

void draw () {
  background(#030303);
  
  for (int i=0, i<thing, i++) {
  ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
  v[i].add(a[i]);
  loc[i].add(v);
  for (int j=0; j<thing; j++) {
    if (i!=j) {
   if (loc[i].dist(loc[j])<sz[i]/2=sz[j]/2) {
    fill(frameCount%360, 80, 60,80);
    v.mult(-1);
  }else {
    fill(#03FF72);
  }
  if (loc.x+sz1/2>width || loc.x-sz1/2<0) {
    v.x*=-1;
  }
  if (loc.y+sz1/2>height || loc.y-sz1/2<0) {
    v.y*=-1;
  }
}

