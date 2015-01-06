int thing=100, minDiam= 15, maxDiam=50;
PVector[]v= new PVector[thing];
PVector[]loc= new PVector[thing];
PVector[]a= new PVector[thing];
float[]sz= new float[thing];
PVector[]mass= new PVector[thing];

void setup () {
  size (displayWidth, displayHeight);
  colorMode (HSB, 360, 100, 100, 100);
  for (int i=0; i<thing; i++) {
    loc[i]=new PVector (random(width), random(height));
    v[i]= PVector.random2D();
    a[i]=new PVector (0, 0);
    sz[i]=random(5, 40);
     // mass[i]=map(sz[i], minDiam, maxDiam, 0.1, 1.5);
  }
}

void draw () {
  background(#030303);

  for (int i=0; i<thing; i++) {
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
    v[i].add(a[i]);
    loc[i].add(v[i]);
    for (int j=0; j<thing; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j])<sz[i]/2+sz[j]/2) {
          fill(frameCount%360, 80, 60, 80);
          if (loc[i].x < loc[j].x) {  
            v[i].x = -abs(v[i].x);
            v[j].x = abs(v[j].x);
          } else {
            v[i].x = abs(v[i].x);
            v[j].x = -abs(v[j].x);
          }
          if (loc[i].y < loc[j].y) {
            v[i].y = -abs(v[i].y);
            v[j].y = abs(v[j].y);
          } else {
            v[i].y = abs(v[i].y);
            v[j].y = -abs(v[j].y);
          }
        }
      }
    }

    if (loc[i].x+sz[i]/2>width || loc[i].x-sz[i]/2<0) {
      v[i].x*=-1;
    }
    if (loc[i].y+sz[i]/2>height || loc[i].y-sz[i]/2<0) {
      v[i].y*=-1;
    }
  }
//   v[i].normalize();
   //v[i].div(mass[i]);
}

