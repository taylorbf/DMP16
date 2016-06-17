/* Interaction Template
   Goucher - Digital Media Programming
   Ben Taylor
*/

void setup() {
   size(500,500);
   noStroke();
}

void draw() {
  
  if (mouseX > width/2) {
    fill(255,0,100);
  } else {
    fill(0,255,100);
  }
   
  ellipse(mouseX,mouseY,30,30);
  
}


