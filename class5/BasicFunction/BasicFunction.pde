/* Basic Function - BT
*/

void setup() {
   size(500,500);
}

void draw() {
  
  rect(random(width),random(height),20,20);
  
}

void erase() {
   background(0);
}


/************ 
*   MOUSE   *
************/

void mousePressed() {
  erase();
}

void keyPressed() {
  erase();
}
