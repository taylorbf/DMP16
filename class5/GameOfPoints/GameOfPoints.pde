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

void pointsUp (increase) {
 if (timer < 300) {
    points = points + increase; 
}

/************ 
*   MOUSE   *
************/

void mousePressed() {
<<<<<<< HEAD
  pointsUp(5);
=======
  if (timer < 300) {
    points = points + 7;
  }
  
>>>>>>> origin/master
}

void mouseMoved() {
  pointsUp(5);
}

void mouseReleased() {
<<<<<<< HEAD
  pointsUp(1); 
=======
  if (timer < 300) {
    points = points + 9;
  }
>>>>>>> origin/master
}

// Nice mouse extras!

<<<<<<< HEAD
void mouseDragged(6) {
  pointsUp();
}

void mouseWheel(10) {
  pointsUp();
=======
void mouseDragged() {
  if (timer < 300) {
    points = points + 8;
  }
}

void mouseWheel() {
  if (timer < 300) {
    points = points + 2;
  }
>>>>>>> origin/master
}

void keyPressed() {
<<<<<<< HEAD
 pointsUp(3);
=======
  if (timer < 300) {
    points = points + 4;
  } 
>>>>>>> origin/master
}



