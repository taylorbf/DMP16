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
       
      // find the average brightness of our pixel
      var bright = ( r + g + b ) / 3
      
      // if it is a very bright pixel, use a red color
      if (bright > 160) {
        r = 255
        g = 0
        b = 0
      // if it is a medium bright pixel, use a blue color
      } else if (bright > 80 && bright <= 160) {
        r = 0
        g = 0
        b = 255
      // if it is a dark pixel, use a yellow color 
      } else {
        r = 255
        g = 255
        b = 0
      }
       
      // set our current pixel with the new r,g,b color
      pixels[index+0] = r  //r
      pixels[index+1] = g  //g
      pixels[index+2] = b   //b
      pixels[index+3] = 255//alpha
      
    }
  }
  
  // update the canvas using our new colorful pixels array!
  updatePixels()
}