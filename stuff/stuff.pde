int ballcount=500;
float[]x= new float [ballcount];
float[]y= new float [ballcount];
float[]vx= new float [ballcount];
float[]vy= new float [ballcount];
float[]sz= new float [ballcount];
float[]dsz= new float [ballcount]; 
float[]c= new float [ballcount];

void setup () {
  size (displayWidth, displayHeight);
  for (int i=0; i <=x.length; i++) {
    vx[i]=random(-5, 5);
    vy[i]=random(-5, 5);
    x[i]=random(width) + vx[i];
    y[i]=random(height) + vy[i];
    sz[i]=random(50)+dsz[i];
    c[i]= random(255);
    dsz[i]=random(-5, 5);
  }
}


void draw() {
  for (int i=0; i<=x.length; i++) {
    fill (c[i], c[i], c[i]);
    ellipse(x[i], y[i], sz[i], sz[i]);
    if (x[i]>=width) {
      vx[i]=-abs(vx[i]);
    }
    if (y[i]>=height) {
      vy[i]=-abs(vy[i]);
    }
    if (x[i]<=0) {
      vx[i]=abs(vx[i]);
    }
    if (y[i]<=0) {
      vy[i]=abs(vy[i]);
    }
    if (sz[i]>=100) {
      dsz[i]=-abs(dsz[i]);
    }
    if (sz[i]<=10) {
      dsz[i]=-abs(dsz[i]);
    }
  }
}

