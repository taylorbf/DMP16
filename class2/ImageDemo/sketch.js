var img

function preload() {
  img = loadImage("assets/baby.png")
}

function setup() {
  createCanvas(500,500)
  background(255)
}

function draw() {
  imageMode("center")
  if (mouseIsPressed) {
    image(img, mouseX, mouseY,100,115);
  }
}