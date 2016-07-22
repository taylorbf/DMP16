var x1 = 0
var x2 = 0

function setup() {
  createCanvas(500,200)
}

function draw() {
  background(0)
  fill("red")
  rect(x1,0,100,100)
  fill("blue")
  rect(x2,100,100,100)
}

function keyTyped() {
  if (key == "a") {
    x1 = x1 + 5
  }
  if (key == "l") {
    x2 = x2 + 4
  }
}