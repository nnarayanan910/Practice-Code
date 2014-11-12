void setup () {
  size (500, 500);
}
void draw () {
  greenSquare (mouseX, mouseY, 50);
}

void greenSquare (int x, int y, int sz) {
  fill (#41D807);
  rect(x, y, sz, sz);
}
