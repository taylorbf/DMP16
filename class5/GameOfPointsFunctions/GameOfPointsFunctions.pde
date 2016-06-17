/* Fix me, using functions!
   Goucher - Digital Media Programming
   Ben Taylor
*/

int points = 0;
int timer = 0;
color reallyBadRed = color(255,0,0,100);
int boxwid;

void setup() {
   size(500,500);
   boxwid = width;
   textAlign(CENTER);
   textSize(50);
   background(255,0,0);
}

void draw() {
  
  if (timer < 300) {
     background(255,255,255);
  } else {
     background(0,255,0);
  }
 
  fill(0);
  text(points,width/2,height/2);
  
  timer = timer + 1;
}



/************ 
*   MOUSE   *
************/

void mousePressed() {
  pointsUp(8);
  
}

void mouseMoved() {
  pointsUp(15);
}

void mouseReleased() {
  pointsUp(1);
}

// Nice mouse extras!

void mouseDragged() {
   pointsUp(6);
}

void mouseWheel() {
   pointsUp(2);
}

void keyPressed() {
   pointsUp(4);
}

void pointsUp(int increase) {
  if (timer < 300) {
    points = points + increase;
  } 
}



