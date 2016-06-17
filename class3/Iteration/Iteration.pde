// loops

void setup() {
  size(700,100);
  noStroke();
}

void draw() {
   for (int i=0; i<15; i=i+1) {
     fill(i*20,i*20,255);
     ellipse(i*50,50,50,50);
   }
}
