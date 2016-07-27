var x = 0
var y = 0
var movingDown = true
var movingRight = true
var currentColor


function setup() {
  createCanvas(800,300)
  currentColor = color(0)
  noStroke()
}

function draw() {
  // make x get bigger by 1 each frame
  if (movingDown) {
    y = y + random(0,20)
  } else {
    y = y - random(0,20)
  }
  if (movingRight) {
    x = x + random(0,20)
  } else {
    x = x - random(0,20)
  }
  
  if (y > height) {
    movingDown = false
    currentColor = color( random(0,255),random(0,255),random(0,255), 50 )
  }
  if (y < 0) {
    movingDown = true
    currentColor = color( random(0,255),random(0,255),random(0,255), 50 )
  }
  if (x > width) {
    movingRight = false
    currentColor = color( random(0,255),random(0,255),random(0,255), 50 )
  }
  if (x < 0) {
    movingRight = true
    currentColor = color( random(0,255),random(0,255),random(0,255), 50 )
  }
  fill(currentColor)
  // draw our circle at current x and y coordinates
  ellipse(x,y,50,50)
}