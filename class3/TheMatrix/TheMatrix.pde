/* Iteration example - BT 

The math on this is a bit rough,
and not worth studying.
This sketch aims to show the power
of interacting with a loop.
*/

float bubbles = 10000;
float row = sqrt(bubbles);
float size;

void setup() {
 size(800,800); 
 noStroke();
 size = height/row;
}

void draw() {
  fill(#ffffff, 20);
  rect(0,0,width,height);
  for (float i=0;i<bubbles;i++) {
   float x = (i%row) * size;
   x += ((mouseX-width/2)/5) * (i%row-row/2);
   float y = int(i/row) * size;
   y += ((mouseY-height/2)/5) * (int(i/row)-row/2);
   float r = map(i,0,bubbles,0,255);
   float g = map(i,0,bubbles,255,0);
   float b = 255;
   fill(r,g,b); 
   rect(x,y,size,size);
  }
}
