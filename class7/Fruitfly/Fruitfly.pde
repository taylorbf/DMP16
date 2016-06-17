Gnat[] swarm = new Gnat[1000];

void setup() {
  size(800,500);
  noStroke();
  for (int i = 0; i < swarm.length; i++ ) {
    swarm[i] = new Gnat();
  }
  colorMode(HSB);
}

void draw() {
   //background(255);
   
   for (int i = 0; i < swarm.length; i++ ) {
    swarm[i].fly();
   // swarm[i].zap();
   }
   
   //bug.fly();
   //bug.zap();
}

class Gnat {
  
  float flyX = 300;
  float flyY = 300;
  float flyAlpha = 255;
  float flySize = 5;
  color flyColor = color(random(255),255,255,50);
  
  Gnat() {
    
  }
    
  void fly() {
     fill(flyColor);
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




