/* Motion Detection
   Goucher - Digital Media Programming
   Ben Taylor
   HINT: Skip down to the the bottom of this sketch
   to edit
*/ 

//Define pixilation size, initialize cols/rows/video variables
var cellSize = 20;
var cols, rows;

// Array to store prev frame data
var pastFrame = []

// Variable for capture device
var capture;

var lastDiff = 0


function setup() {
  createCanvas(windowWidth, windowHeight);
  frameRate(10);
  noStroke();
  fill(255);

  capture = createCapture(VIDEO)
  capture.size(640, 480)
  capture.hide()


  cols = capture.width / cellSize;
  rows = capture.height / cellSize;
  
}


function draw() { 
  fill(0)
  rect(0,0,width,height)
  //image(capture,0,0,capture.width,capture.height)

  capture.loadPixels()

  var totalDiff = 0

  var locs = []
  
  // Begin loop for columns
  for (var i = 0; i < cols; i++) {
    // Begin loop for rows
    for (var j = 0; j < rows; j++) {
    
      // Where are we, pixel-wise?
      var x = i*cellSize
      var y = j*cellSize
      var loc = (capture.width - x - 1) + y*capture.width; // Reversing x to mirror the image
    
      // Make a new color from this pixel
      var r = capture.pixels[loc*4]
      var g = capture.pixels[loc*4 + 1]
      var b = capture.pixels[loc*4 + 2]
      var c = color(r, g, b)

      if (pastFrame[i*rows+j]) {
        //Compare brightness of this frame to last frame       
        var bdiff = abs(brightness(c) - brightness(pastFrame[i*rows+j]))
        if (bdiff > 20) {
          totalDiff++;
          locs.push([x,y])

          //console.log(x)
        }
      }
    
      //This frame becomes prev frame
      pastFrame[i*rows+j] = c

      //console.log(locs)

    }
  } 

  var smoothedDiff = (totalDiff + lastDiff*9) / 10
  lastDiff = totalDiff

  if (locs.length) {

    var xloctotal = 0
    var yloctotal = 0

    for (var i=0;i<locs.length;i++) {
      xloctotal += locs[i][0]
      yloctotal += locs[i][1]
    }

    var xloc = xloctotal / locs.length
    var yloc = yloctotal / locs.length

  } else {
    xloc = 0
    yloc = 0
  }
  xloc = xloc * width / capture.width
  yloc = yloc * height / capture.height



  /* 
   * EDIT BELOW
   * Draw something using the following variables:
   * 
   * smoothedDiff is a number that represents total motion
   * xloc is a number averaging the x location of motion
   * yloc is a number averaging the y location of motion
   * 
   */



  fill(smoothedDiff)
  textSize(100)
  text("motion",xloc,yloc)






 /*
  * STOP EDITING
  */

}



