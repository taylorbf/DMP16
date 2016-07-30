

function setup() {
  createCanvas(500,500)
}

function draw() {
  // Red background will happen 10% of the time
  // because random(0,1) outputs a number between 0 and 1
  // That number will be less than 0.1 only 10% of the time.
  if ( random(0,1) < 0.1) {
    background( "red" ) 
  } else {
    background( "blue" )
  }
}