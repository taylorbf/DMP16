
// Define a decimal number (float) variable x
int x = 1;

void setup() {
  size (700,100); 
}

void draw() {
  background(random(255),random(255),random(255));
  // stroke color
  stroke(0, 100, 200);
  // stroke width
  strokeWeight(2);
  // draw a shape
  ellipse(x,50,50,50);
  x = x + 1;
}






/* TRY
- Use x in as many places as possible!
- Or maybe you want to use x/2 or x/3 or x/50
*/
