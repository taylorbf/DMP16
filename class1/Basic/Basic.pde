// This is a comment!

/* 
This is a 
Multi-Line
Comment
*/

//This happens when you run the sketch
void setup() {
  //Resize the sketch window (w, h)
  size(300,300);
  //Print to console for debugging
  println("Working so far");
}

void draw() {
  
  //Erase the whole sketch
  background(255);
  
  //Draw a rectangle using parameters: x,y,width,height
  rect(0,0,20,20);
  
  //Draw a circle that follows your mouse:
  fill(#00aaff);
  ellipse(mouseX,mouseY,40,40);
  
}

/* TRY:
- Deleting the background() code so the sketch never erases
- Changing the shape that you draw with
- Changing the colors
- Making the mouse control some other aspect of the sketch.
- Using random()
*/

