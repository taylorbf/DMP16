function setup() {
  createCanvas(800,300)
}

function draw() {
  var x = random(width)
  var y = height/2
  var w = 20
  var h = 20
  ellipse(x,y,w,h)
}