ball[]b=new ball[10];

void setup () {
  size (displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<b.length; i++) {
    b[i] = new ball(map(i, 0, b.length, 0, width));
  }
}

void draw () {
  background(0);
  for (int i=0; i<b.length; i++) {
    b[i].move();
    b[i].bounce();
    b[i].create();
    for (int j=0; j<ball; j++) {
      if (i!=j) {
        b[i].BBounce(b[j]);
      }
    }
  }
}

class ball {
  PVector loc, a, v;
  float sz, c;

  ball () {
    sz=random(10, 50);
    loc=new PVector(random(sz/2, width/2), random(sz/2, height/2));
    v=new PVector(0, 0);
    a=new PVector(0, .1);
    c=random(360);
  }  

  ball (float tempx, float tempsz) {
    sz=tempsz;
    loc=new PVector(tempx, sz);
    v=new PVector (0, 0);
    a=new PVector (0, 0.1);
    c=random(360);
  }

  void create() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    v.add(a);
    loc.add(v);
  }

  void WBounce () {
    if (loc.y+sz/2>=height|| loc.y-sz/2<0) {
      v.y*=-1;
    }
    if (loc.x+sz/2< width || loc.x-sz/2<0) {
      v.x*=-1;
    }
  }

  void BBounce (ball b2) {
    if (loc.dist(b2.loc) <sz/2+b2.sz/2) {
      v=PVector.sub(loc, b2.loc);
      v.normalize();
      v.setMag(v);
    }
  }
}

