Fruitfly bug = new Fruitfly();

void setup() {
  size(100,100);
  noStroke();
}

void draw() {
   background(255);
   bug.fly();
   bug.zap();
}

class Fruitfly {
  
  float flyX = 50;
  float flyY = 50;
  float flyAlpha = 255;
  float flySize = 5;
  
  Fruitfly() {
    
  }
    
  void fly() {
     fill(0,flyAlpha);
     ellipse(flyX,flyY,flySize,flySize);
     flyX = flyX + random(-3,3);
     flyY = flyY + random(-3,3);
  }
  
  void zap() {
    
     if (flyX > width) {
        flyX = width/2;
        background(255,255,0);
     }
     if (flyX < 0) {
        flyX = width/2;
        background(255,255,0);
     }
     if (flyY > height) {
        flyX = height/2;
        background(255,255,0);
     }
     if (flyY < 0) {
        flyX = height/2;
        background(255,255,0);
     }

  }

}




