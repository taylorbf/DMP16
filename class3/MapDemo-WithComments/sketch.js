function setup() {
  createCanvas(500,500)
  noStroke()
}

function draw() {
  
  // Draw a white background
  background(255)
  
  // Use map() to scale an input value to a new range.
  // In this case, our initial range is 0 to width
  // and our new desired range is 0 to 255.
  // This re-scales our mouseX to be between 0 and 255 
  // (which is the range for a color value)
  var opacity = map(mouseX,0,width,0,255)
  
  // set a fill style with our new opacity
  fill(255,150,0,opacity)
  
  // draw the circle
  ellipse(width/2,height/2,width,height)
  
}