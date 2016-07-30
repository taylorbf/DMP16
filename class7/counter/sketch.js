var counter = 0

function setup() {
  createCanvas(100,100)
}

function draw() {
  background(255)
  textSize(50)
  text(counter,0,50)
}

function mousePressed() {
  counter = counter + 1
}