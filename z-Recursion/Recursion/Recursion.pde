


void setup() {
  size(600,600);
  rectMode(CENTER);
  noStroke();
 // colorMode(HSB,255);
  makeCircle(width/2,height/2,400);
}

void makeCircle(float xval, float yval, float radius) {
 // float r = map(radius,0,400,0,255);
  fill(100,0,255,150);
  rect(xval,yval,radius/2,radius/2);
  
  if (radius>5) {
     makeCircle(xval-radius/2,yval,radius/2);
     makeCircle(xval+radius/2,yval,radius/2);
     
     makeCircle(xval,yval-radius/2,radius/2);
     makeCircle(xval,yval+radius/2,radius/2);
  }
  
}
