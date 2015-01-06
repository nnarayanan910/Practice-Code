//the tagees

class tagees {
  PVector loc, a, v;
  float sz, hue;

  Tagee () {
    loc=new PVector (width/2, height/2); 
    v= new PVector.random2D ();
    a=new PVector(0, 0.05);
  }

  void create () {
    fill(hue, 80, 60, 80);
    ellipse (loc.x, loc.y, sz, sz);
  }

  void move () {
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
      hue=hue+20;
      if (b.loc.x<b2.loc.x) {
        if (b.loc.x < b2.loc.x) {  
          b.v.x = -abs(b2.v.x);
          b.v.x = abs(b2.v.x);
        } else {
          b.v.x = abs(b2.v.x);
          b.v.x = -abs(b2.v.x);
        }
        if (b.loc.y < loc[j].y) {
          v[i].y = -abs(v[i].y);
          v[j].y = abs(v[j].y);
        } else {
          v[i].y = abs(v[i].y);
          v[j].y = -abs(v[j].y);
          v.normalize();
          v.setMag(v);
        }
      }

