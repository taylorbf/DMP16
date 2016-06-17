float myRotation = 0;

void setup() {
  size(200,200); 
}

void draw() {
  background(0);
  
  rectMode(CENTER);
  
  pushMatrix();
  translate(100,100);
  rotate(myRotation);
  rect(0,0,50,50);
  popMatrix();
  
  myRotation = myRotation + 0.1;
  if (myRotation > TWO_PI) {
     myRotation = 0; 
  }
}