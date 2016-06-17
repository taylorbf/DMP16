
void setup() {
  size(700,700,P3D);
    
}

void draw() {
  background(0);
  pushMatrix();
  translate(width/2,height/2,mouseX);
  rotateX(radians(mouseY));
  box(100,100,100);
  popMatrix();
  
  
  sphere(100);
  
}
