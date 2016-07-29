var x = []
var y = []
var circleColor = []
var colors = []
var numberOfCircles = 100

function setup() {
  createCanvas(1200,800)
  strokeWeight(1)
  colors = [
    color(0,0,0),
    color(255,190,0),
    color(220,50,30)
  ]
  // assign the starting x and y point for each circle
  for (var i=0; i<numberOfCircles; i=i+1) {
    x[i] = random(0,width)
    y[i] = random(0,height)
    circleColor[i] = random(colors)
  }
}

function draw() {
  
  background(255)
  
  for (var i=0; i<numberOfCircles; i=i+1) {

    // draw circles
    stroke(circleColor[i])
    //fill()
    ellipse(x[i],y[i],100,100)
    // move circles in random direction
    x[i] = x[i] + random(-1,1)
    y[i] = y[i] + random(-1,1)

  }
}