/* Rain, Step 3
   Intro Digital Media Programming FA14
   Ben Taylor                            */

Raindrop drop = new Raindrop(100,4,5);

void setup() {
  size(800,600);
  strokeWeight(1);
}

void draw() {
  
  background(0);
  drop.draw();
  
}



class Raindrop {
  
  int x, y; 
  float size, speed;
  
  Raindrop(int setx, float setsize, float setspeed) {
    x = setx;
    y = -100;
    size = setsize;
    speed = setspeed;
  }
  
  void draw() {
  
    stroke(#559ADE);
    line(x,y,x,y+size*10);
    
    y += speed;
     
  }
  
}


