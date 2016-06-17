Fruitfly fly1 = new Fruitfly();
Fruitfly fly2 = new Fruitfly();
float hue = 0;

void setup() {
  size(800,500);
  background(255);
  colorMode(HSB);
}

void draw() {
   fly1.fly();
   fly1.zap();
   fly2.fly();
   fly2.zap();
   stroke(hue,255,255,20);
   noFill();
   line(fly1.flyX,fly1.flyY,fly2.flyX,fly2.flyY);
   hue = hue + 0.2;
   hue = hue % 50;
}

class Fruitfly {
  
  float flyX = 400;
  float flyY = 200;
  float flySize = 5;
  float flySpeed = 3;
  
  Fruitfly() {
    
  }
    
  void fly() {
  //   fill(flyHue,255,255,100);
  //   ellipse(flyX,flyY,flySize,flySize);
     flyX = flyX + random(0-flySpeed,flySpeed);
     flyY = flyY + random(0-flySpeed,flySpeed);
  }
  
  void zap() {
    
     if (flyX > width) {
        flyX = width/2;
     }
     if (flyX < 0) {
        flyX = width/2;
     }
     if (flyY > height) {
        flyY = height/2;
     }
     if (flyY < 0) {
        flyY = height/2;
     }

  }

}




