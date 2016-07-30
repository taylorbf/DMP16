// define our global video variable
var video

function setup() {
  createCanvas(320,240)
  // create a video capture from default camera
  video = createCapture( VIDEO )
  video.size(320,240)
  // hide the original video stream
  video.hide()
  // set pixel density (only necessary for retina displays)
  pixelDensity(1)
}

function draw() {
  
  // tell the computer we want to work with the video.pixels[] array
  video.loadPixels()
  // tell the computer we want to work with the pixels[] array
  loadPixels()
  
  // loop through each (x,y) point in our canvas
  for (var row=0;row<height;row=row+1) {
    for (var col=0;col<width;col=col+1) {
    
      // find the location in the pixels[] array
      // of the pixel at the current column and row
      var index = (row * width + col) * 4
       
      // get the red, green, and blue values 
      // from the current pixel in our video
      var r = video.pixels[index+0]
      var g = video.pixels[index+1]
      var b = video.pixels[index+2]
       
      // get the pixel's average brightness
      // (a number between 0 and 255)
      var bright = ( r + g + b ) / 3
       
      // find the red, blue, and green values of the current pixel 
      var r = video.pixels[index+0]
      var g = video.pixels[index+1]
      var b = video.pixels[index+2]
       
      // do something cool to CHANGE the r,g,b variables
      // your code goes here!
      
      
       
      // then set our current pixel with the new r,g,b value
      pixels[index+0] = r       //red
      pixels[index+1] = g       //green
      pixels[index+2] = b       //blue
      pixels[index+3] = 255     //alpha
      
    }
  }
  
  // update the canvas using our new amazing pixels array!
  updatePixels()
}