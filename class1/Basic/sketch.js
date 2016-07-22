// This is a comment! It won't be rendered.

//Setup happens once when you run the sketch
function setup() {
  //Create and size a canvas (w, h)
  createCanvas(300,300);
  //Print to console for debugging
  console.log("Working so far");
}

function draw() {
  
  //Draw a black background across the canvas
  background(0);
  
  //Draw a rectangle with parameters x,y,width,height
  rect(50,50,200,200);
  
  //Draw a circle that follows your mouse:
  fill(0,100,255);
  ellipse(mouseX,mouseY,40,40);
  
}

/* TRY:
- Deleting the background() code so the sketch never erases
- Changing the shape that you draw with
- Changing the colors
- Adding more shapes
- Setting the opacity of fill() using a fourth parameter
*/