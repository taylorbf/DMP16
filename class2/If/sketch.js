var x = 0
var y = 50

function setup() {
  createCanvas(500,500)
}

function draw() {
  
  background(0)
  ellipse(x,y,50,50)
  
  x = x + 5
  
  if ( x > 500 ) {
    x = 0
  }
  
}