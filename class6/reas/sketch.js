var xs = []
var ys = []
var colors = []
var numberOfCircles = 300
var colorOptions

function setup() {
  createCanvas(1500,700)
  background(255)
  noFill()
  strokeWeight(1)
  
  colorOptions = [
    color(0,30),
    color(255,30),
    color(255,190,0,30),
    color(220,50,30,30)
  ]
  
  for (var i=0;i<numberOfCircles;i++) {
    xs[i] = random(windowWidth)
    ys[i] = random(windowHeight)
    colors[i] = random(colorOptions)
  }
  
}

function draw() {

  for (var i=0;i<numberOfCircles;i++) {
    xs[i] += random(-5,5)
    ys[i] += random(-5,5)

    for (var j=0;j<numberOfCircles;j++) {
      if (i!=j) {
        
        var c = dist(xs[i], ys[i] ,xs[j], ys[j] )
      
        if (c < 30) {
          stroke(colors[i])
          line(xs[i],ys[i],xs[j],ys[j])
        }
      }
    }

  }
  
}