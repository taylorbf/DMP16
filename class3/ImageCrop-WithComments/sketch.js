var img

function preload() {
  img = loadImage("nature.jpg")
}

function setup() {
  createCanvas(700,700)
}

function draw() {
  // the first argument is the img variable
  // the next 4 are x, y, width, height of CROP RECTANGLE
  // the final 4 are x, y, width, height of DRAW RECTANGLE
  
  // image(img,cx,cy,cw,ch,dx,dy,dw,dh)
  
  image( img, mouseY,0,20,height, mouseX,0,20,height )

}