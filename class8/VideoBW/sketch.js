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
      
      // if that brightness is more than average
      if (bright > 127) {
        // use white
        var bw = 255
      } else {
        // otherwise use black
        var bw = 0
      }
      
      // set the canvas pixel to our new black/white values
      pixels[index+0] = bw   //r
      pixels[index+1] = bw   //g
      pixels[index+2] = bw   //b
      pixels[index+3] = 255  //alpha
      
    }
  }
  
  // update the canvas using our new black/white pixels array!
  updatePixels()
}