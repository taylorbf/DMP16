function setup() {
   createCanvas(500,500)
}

function draw() {
  
   fill(100,100,255)
   
   if (mouseIsPressed) {
     point(mouseX,mouseY)
   }

}