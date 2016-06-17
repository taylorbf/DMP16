
float x=290, y=10, bsize=20, speed=5;

void setup() {
   size(300,21);
}

void draw() {
  
  background(#ffffff);
  ellipse(x,y,bsize,bsize);
  
  x = x - 5;
  
  /*if (x > width || x < 0) {
    speed *= -1;
  }
  */
}
