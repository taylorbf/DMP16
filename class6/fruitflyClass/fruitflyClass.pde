Fruitfly fly1 = new Fruitfly();
Fruitfly fly2 = new Fruitfly();

void setup() {
  size(200,200);
  noStroke();
}

void draw() {
   background(255);
   fly1.fly();
   fly1.zap();
   fly2.fly();
   fly2.zap();
}

class Fruitfly {
  
  float flyX = 50;
  float flyY = 50;
  float flySize = 7;
  
  Fruitfly() {
    
  }
    
  void fly() {
     fill(0);
     ellipse(flyX,flyY,flySize,flySize);
     fill(0,50);
     ellipse(flyX,flyY,flySize*random(1,3),flySize/2);
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
        flyY = height/2;
        background(255,255,0);
     }
     if (flyY < 0) {
        flyY = height/2;
        background(255,255,0);
     }

  }

}




