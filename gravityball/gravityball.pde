int x;
int y;
int sz;
int v=10;
int a;

void setup () {
  size (500, 500);
  x=width/2;
  sz=50;
  a=5;
  y=0;
}

void draw () {
  background (#030202);
  ellipse (x, y, sz, sz);
  v=v+a;
  y=y+v;

  if (y+sz/2>=height) {
    y= height-sz/2;

    v*=-1;
  }

}
