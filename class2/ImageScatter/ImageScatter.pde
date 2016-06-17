
PImage test;

void setup() {
  size(1000,700);
  test = loadImage("wheel.png");
}

void draw() {
  imageMode(CENTER);
  image(test,random(width),random(height),250,250);
}
