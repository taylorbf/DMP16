function setup() {
  createCanvas(400,400)
  noStroke()
}

// try accelerometerX also

function draw() {
  background(0,20)
  var rz = rotationZ
  var rx = rotationX
  var ry = rotationY
  ellipse(10,rx,50,50)
  ellipse(55,ry,50,50)
  ellipse(100,rz,50,50)
}