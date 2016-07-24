var rotation = 0
var rotationSize = 50

function setup() {
  createCanvas(200,200)
}

function draw() {
  var x = sin(rotation) * rotationSize + width/2
  var y = cos(rotation) * rotationSize + width/2
  ellipse(x,y,20,20)
  rotation = rotation + 0.1
}