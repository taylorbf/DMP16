function setup() {
  createCanvas(800,300)
}

function draw() {
  
  // x will be a random number between 0 and width
  var x = random(width)
  var y = height/2
  var w = 20
  var h = 20
  
  // we use that random x to draw a circle at a random x location
  ellipse(x,y,w,h)
  
  // since draw() happens over and over again
  // it will continue drawing random circles!
}