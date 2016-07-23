var img

function preload() {
  img = loadImage("assets/baby.png")
}

function setup() {
  createCanvas(500,500)
  noCursor()
}

function draw() {
  background(255)
  imageMode("center")
  image(img, mouseX, mouseY,100,115);
}