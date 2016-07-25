var colors = [ "#ccc", "#000", "#0af" ]

function setup() {
  createCanvas(800,600)
  noStroke()
  background(0)
  
  for (var i=0;i<10000;i++) {
    var currentColor = random( colors )
    fill(currentColor)
    var size = random(20)
    var x = random(width)
    var y = random(height)
    ellipse(x,y,size,size)
  }
  
}