/* Video pixelation / drawing shapes with video data 

NOTICE:
In the other video sketches, I loop through width and height
In this sketch, I loop through video.width and video.height

This is done so that I can have a bigger canvas
and draw my pixelated image at twice the scale of the original

*/

// define our global video variable
var video

function setup() {
  createCanvas(640,480)
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
  
  // loop through each (x,y) point in our video
  for (var row=0;row<video.height;row=row+20) {
    for (var col=0;col<video.width;col=col+20) {
    
      // find the location in the pixels[] array
      // of the pixel at the current column and row
      var index = (row * video.width + col) * 4
       
      // get the red, green, and blue values 
      // from the current pixel in our video
      var r = video.pixels[index+0]
      var g = video.pixels[index+1]
      var b = video.pixels[index+2]
       
      // use our r,g,b to set the fill of a rectangle
      fill(r,g,b)
      // draw a rectangle using twice the dimensions of the original video
      rect(col*2,row*2,40,40)
      
      // try tinkering with the x,y,width,height of the rectangles!
      // try using other shapes or mouse interaction!
    }
  }
  
}