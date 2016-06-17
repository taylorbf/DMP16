/* Rain, Step 1
   Intro Digital Media Programming FA14
   Ben Taylor                            */

  
int x = 10;
int y = 0;
int size = 2;
int speed = 3;

void setup() {
  size(800,600);
  strokeWeight(1);
}

void draw() {
  
  background(0);
  
  stroke(#559ADE);
  line(x,y,x,y+size*10);
  
  y += speed;
  
}


