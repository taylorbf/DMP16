Fruitfly[] flies = new Fruitfly[20];

void setup() {
  size(400,400);
  noStroke();
  for (int i=0;i<20;i++) {
     flies[i] = new Fruitfly(); 
  }
}  

void draw() {
   background(255);
  for (int i=0;i<20;i++) {
     flies[i].fly(); 
     flies[i].zap(); 
  }
}

class Fruitfly {
  
  float flyX = 200;
  float flyY = 200;
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




