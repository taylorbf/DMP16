var x = []
var y = []
var circleColor = []
var colors = []
var numberOfCircles = 300

function setup() {
  createCanvas(1200,800)
  strokeWeight(1)
  colors = [
    color(0,0,0,30),
    color(255,255,255,30),
    color(255,190,0,30),
    color(220,50,30,30)
  ]
  // assign the starting x and y point for each circle
  for (var i=0; i<numberOfCircles; i=i+1) {
    x[i] = random(0,width)
    y[i] = random(0,height)
    circleColor[i] = random(colors)
  }
}

function draw() {
  
  for (var i=0; i<numberOfCircles; i=i+1) {

    // draw circles
    //ellipse(x[i],y[i],50,50)
    // move circles in random direction
    x[i] = x[i] + random(-5,5)
    y[i] = y[i] + random(-5,5)
    
    for (var j=0;j<numberOfCircles;j=j+1) {
      // find distance to every other circle
      var distance = dist( x[i], y[i], x[j], y[j] )
      
      if (distance < 40) {
        stroke(circleColor[i])
        line(x[i],y[i],x[j],y[j])
      }
      
    }
  }
}