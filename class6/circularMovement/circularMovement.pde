float radians;

void draw() {
  // draw background
  fill(0,0,0,20);
  rect(0,0,width,height);
  // calculate x & y
  float x = sin(radians) * 25 + 50;
  float y = cos(radians) * 25 + 50;
  // draw circle
  noStroke();
  fill(255,50,150);
  ellipse(x,y,20,20);
  // add an increment to our radial position
  radians = radians + 0.1;
}
