function setup() {
   createCanvas(500,500)
   noStroke()
}

function draw() {
  // Erase gradually
  fill(255,50)
  rect(0,0,width,height)
}

/************ 
*   MOUSE   *
************/

function mousePressed() {
  fill(0)
  ellipse(mouseX,mouseY,60,60)
}

function mouseMoved() {
  fill(0,100,255)
  ellipse(mouseX,mouseY,10,10)
  console.log(mouseX)
}

function mouseReleased() {
  fill(0)
  ellipse(mouseX,mouseY,30,30)
}


// Nice mouse extras!

function mouseDragged() {
  stroke(255,0,0)
  strokeWeight(5)
  // pmouseX is the previouse mouseX
  line(pmouseX, pmouseY, mouseX,mouseY)
  noStroke()
}

function mouseWheel() {
  fill(0,255,0,20)
  rect(0,0,width,height)
}