/* Rain, Step 2
   Intro Digital Media Programming FA14
   Ben Taylor                            */

Raindrop drop = new Raindrop();

void setup() {
  size(800,600);
    strokeWeight(1);
}

void draw() {
  
  background(0);
  drop.draw();
  
}



class Raindrop {
  
  int x = 10;
  int y = 0;
  int size = 2;
  int speed = 3;
  
  Raindrop() {
    
  }
  
  void draw() {
  
    stroke(#559ADE);
    line(x,y,x,y+size*10);
    
    y += speed;
     
  }
  
  
}


