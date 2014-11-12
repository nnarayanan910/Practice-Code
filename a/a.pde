float x, y, z, e, vx, vy, sz;
int s1, s2;
boolean start=true;

void setup () {
  size (800, 700);
  x=width/2; 
  y=height/2;
  sz=40;
  e=height/2-40;
  s1=0;
  s2=0;
  vx=5;
  vy=5;
}

void draw () {
   background (#050505);
  
  //ellpise and movement
  fill (mouseY, mouseX, random(255));
  ellipse (x, y, sz, sz);
  x=x+vx;
  y=y+vy;

  //bounce movement
  if (x>=width) {
    vx=-vx;
  }
  if (y>=height) {
    vy=-vy;
  }
  if (x<=0) {
    vx=-vx;
  }
  if (y<=0) {
    vy=-vy;
  }

  //paddles
  fill (mouseX, mouseY, random (255));
  rect (50, mouseY-45, 20, 90);
  rect (width-50, z, 20, 90);

  //bounce off
  if (x-sz/2==70 && y<=mouseY+45 && y>=mouseY-45) {
    vx=-vx;
  }
  if (x+sz/2==width-50 && y<=z+45 && y>=z-45) {
    vx=-vx;
  }
  
  //Controls for second player
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode==UP) {
        z=z-5;
      }
      if (keyCode==DOWN) {
        z=z+5;
      }
    }
  }

  //goals
  fill ( mouseX, mouseY, x);
  rect (0, e, 25, 90);
  rect (width-20, e, 25, 90);

  //scoring
  fill (#FFFFFF);
  textSize (32);
  text (s1, width/2-20, 60);
  fill (#FFFFFF);
  if (x<=20 && y>=e && y<=e+90) {
    s1=s1+1;
    vx=-vx;
    x=width/2;
    y=height/2;
  }
  textSize (32);
  text (s2, width/2+20, 60);
  fill (#FFFFFF);
  if (x>=width-20 && y>=e && y<=e+90) {
    s2=s2+1;
    vx=-vx;
    x=width/2;
    y=height/2;
  }
  
 //Pause
 if (keyPressed) {
 if (key=='p') {
    vx=0;
    vy=0;
 }
 if (key=='o') {
   vx=5;
   vy=5;
 }
 }
 fill(#FFFFFF);
 textSize(25);
 text ("Press p For Pause And o To Start", width/2-50, height-50);
  
 }



