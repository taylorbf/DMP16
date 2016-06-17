Fruitfly[] flies = new Fruitfly[1000];

void setup() {
  size(600,600);
  noStroke();
  colorMode(HSB);
  background(0);
  for (int i=0;i<flies.length;i++) {
     flies[i] = new Fruitfly(); 
  }
}  

void draw() {
  // background(0);
  for (int i=0;i<flies.length;i++) {
     flies[i].fly(); 
     flies[i].zap(); 
  }
}

class Fruitfly {
  
  float flyX = width/2;
  float flyY = height/2;
  float flySize = 10;
  color flyColor = color(random(255),255,255,50);
  float flySpeed = 10;
  
  Fruitfly() {
    
  }
    
  void fly() {
     fill(flyColor);
     ellipse(flyX,flyY,flySize,flySize);
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




