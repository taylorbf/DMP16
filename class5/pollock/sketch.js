// Pollock - A Cheap Imitation

// Define our three colors as an Array
var colors = [ "#ccc", "#000", "#0af" ]

function setup() {
  createCanvas(800,600)
  noStroke()
  
  // draw a black background
  background(0)
  
  // Loop the following code 10,000 times
  for (var i=0;i<10000;i++) {
    // Pick a random entry from our array of colors
    var currentColor = random( colors )
    // use that color for our pen
    fill(currentColor)
    // choose a random number from 0 to 20 as our circle size
    var size = random(20)
    // give our circle a random width and height
    var x = random(width)
    var y = random(height)
    // draw a circle using our x, y, and size
    ellipse(x,y,size,size)
  }
  // the above code will loop 10,000 times, generating an image
  
}


// NOTE that we do not use a draw() function in this sketch.
// We only define setup(), which happens once.
// Inside setup(), a loop causes 10,000 circles to be drawn
