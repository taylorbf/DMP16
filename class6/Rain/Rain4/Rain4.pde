/* Rain, Final Step (4)
   Intro Digital Media Programming FA14
   Ben Taylor                            */

Raindrop drop[] = new Raindrop[200];
float flood = 0;

void setup() {
  size(800,600);
  strokeWeight(1);
  for (int i=0;i<drop.length;i++) {
    drop[i] = new Raindrop(int(random(width)),int(random(height)*-1),random(10)+1, random(10)+1);
  }
}

void draw() {
  
  background(0);
  
  stroke(#559ADE);
  for (int i=0;i<drop.length;i++) {
    drop[i].draw();
  }
  
  // make it flood
  fill(#559ADE);
  rect(0,height-flood,width,flood);
  if (flood >= height) {
     noLoop();
  }
  
}


class Raindrop {
  
  int x, y; 
  float size, speed;
  
  Raindrop(int setx, int sety, float setsize, float setspeed) {
    x = setx;
    y = sety;
    size = map(setsize, 1, 11, 4, 0.2);
    speed = map(setspeed, 1, 11, 20, 5);
  }
  
  void draw() {
    line(x,y,x,y+size*30);
    
    y += speed;
    
    // if raindrop gets to bottom of page, move back to top.
    if (y > height) {
       y = -300; 
       flood = flood + 0.005;
    }  
  }
}


