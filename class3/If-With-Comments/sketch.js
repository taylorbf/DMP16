function setup() {
  createCanvas(500,500)
  noStroke()
}

function draw() {

  if (mouseX > width/2) {
    // if mouse is on right half of canvas
    // use a blue fill
    fill(0,100,255,50)
  } else {
    // if mouse is on left half of canvas
    // use an orange fill
    fill(255,100,0,50)
  }

  // draw circle at mouse location
  ellipse(mouseX,mouseY,40,40)

}

