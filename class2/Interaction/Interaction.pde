/* Interaction Template
   Goucher - Digital Media Programming
   Ben Taylor
*/

void setup() {
   size(500,500);
   noStroke();
}

void draw() {
  // Erase gradually
  fill(255,20);
  rect(0,0,width,height);
}



/************ 
*   MOUSE   *
************/

void mousePressed() {
  fill(0);
  ellipse(mouseX,mouseY,40,40); 
}

void mouseMoved() {
  fill(#00aaff);
  ellipse(mouseX,mouseY,10,10); 
}

void mouseReleased() {
  fill(0);
  ellipse(mouseX+20,mouseY,40,40); 
}

// Nice mouse extras!

void mouseDragged() {
  stroke(#ff0000);
  strokeWeight(5);
  line(pmouseX, pmouseY, mouseX,mouseY); 
  noStroke();
}

void mouseWheel() {
  fill(#00ff00, 20);
  rect(0,0,width,height);
}



/*********** 
*   KEYS   *
***********/

void keyPressed() {
  fill(#ffff00);
  rect((keyCode%20)*(width/20),0,width/20,height);
  

}
