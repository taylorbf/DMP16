function setup() {
  createCanvas(400,300)
  // set pixel density (only necessary for retina displays)
  pixelDensity(1)
}

function draw() {
  // tell the computer we want to work with the pixels[] array
  loadPixels()
  
  // loop through each (x,y) point in our canvas
  for (var row=0;row<height;row=row+1) {
    for (var col=0;col<width;col=col+1) {
      
      // find the location in the pixels[] array
      // of the pixel at the current column and row
      var index = (row * width + col) * 4
       
      // do something cool to that pixel!
      pixels[index+0] = row           //red
      pixels[index+1] = random(255)   //green
      pixels[index+2] = col           //blue
      pixels[index+3] = 255           //alpha
      
      // this sketch creates a gradient
      // because the red value of each pixel is equal its row # 
      // and the blue value is equal to its column #
      
      // try using other numbesr or variables, or using mouseX 
    }
  }
  
  // update the canvas with our new amazing pixels that we have so carefully chosen!
  updatePixels()
  
}
