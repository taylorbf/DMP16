Fruitfly fly1 = new Fruitfly();
Fruitfly fly2 = new Fruitfly();

void setup() {
  size(800,500);
  background(255);
  noStroke();
  colorMode(HSB);
}

void draw() {
   background(255);
   fly1.fly();
   fly1.zap();
   fly2.fly();
   fly2.zap();
}

class Fruitfly {
  
  float flyX = 400;
  float flyY = 200;
  float flySize = 5;
  float flyHue = 0;
  float flySpeed = 3;
  
  Fruitfly() {
    
  }
    
  void fly() {
     fill(flyHue,255,255,100);
     ellipse(flyX,flyY,flySize,flySize);
     flyX = flyX + random(0-flySpeed,flySpeed);
     flyY = flyY + random(0-flySpeed,flySpeed);
     flyHue = flyHue + 0.1;
     flyHue = flyHue % 255;
  }
  
  void zap() {
    
     if (flyX > width) {
        flyX = width/2;
        background(255,0,255);
     }
     if (flyX < 0) {
        flyX = width/2;
        background(255,0,255);
     }
     if (flyY > height) {
        flyY = height/2;
        background(255,0,255);
     }
     if (flyY < 0) {
        flyY = height/2;
        background(255,0,255);
     }

  }

}




