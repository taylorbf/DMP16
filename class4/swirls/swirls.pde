float x = 0;
float y = 0;
int size = 50;
int clr = 0;
int howmany = 0;

void setup() {
  size(1200,700); 
  x = width/2;
  y = height/2;
  colorMode(HSB);
  background(0);
  noFill();
}

void draw() {
  if (howmany < 200) {
    stroke(clr,255,255,255);
    strokeWeight(10);
    ellipse(x,y,size,size);
    x += floor(random(3)-1)*size;
    y += floor(random(3)-1)*size;
    if (x<0) { x = width/2; }
    if (y<0) { y = height/2; }
    if (x>width) { x = width/2; }
    if (y>height) { y = height/2; }
    clr = clr + 6;
    clr %= 255;
    howmany++;
  }
}
