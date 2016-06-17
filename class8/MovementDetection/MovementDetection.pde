/* Movement Detection
   Goucher - Digital Media Programming FA14
   Ben Taylor
   Derived from Mirror by Daniel Shiffman.
*/ 
 
import processing.video.*;

//Define pixilation size, initialize cols/rows/video variables
int cellSize = 80;
int cols, rows;
Capture video;

// Array to store prev frame data
color[] pastFrame;

void setup() {
  size(960, 720);
  frameRate(30);
  cols = width / cellSize;
  rows = height / cellSize;
  noStroke();
  fill(255);
  
  // fill prev frame with color type
  pastFrame = new color[cols*rows];

  // Start capturing default video input
  video = new Capture(this, width, height);
  video.start();  
  
}


void draw() { 
  fill(0,20);
  rect(0,0,width,height);
  if (video.available()) {
    video.read();
    video.loadPixels();
  
    // Begin loop for columns
    for (int i = 0; i < cols; i++) {
      // Begin loop for rows
      for (int j = 0; j < rows; j++) {
      
        // Where are we, pixel-wise?
        int x = i*cellSize;
        int y = j*cellSize;
        int loc = (video.width - x - 1) + y*video.width; // Reversing x to mirror the image
      
        // Make a new color from this pixel
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        color c = color(r, g, b);
      
        //Compare brightness of this frame to last frame       
        int bdiff = abs(int(brightness(c)) - int(brightness(pastFrame[i*rows+j])));

        //Draw a rectangle with transparency equal to that difference
        fill(#00aaff,bdiff);
        rect(x, y, cellSize, cellSize);
    
        //This frame becomes prev frame
        pastFrame[i*rows+j] = c;
  
      }
    }
  }
}
