import processing.video.*;
int cellSize = 10;
int cols, rows;
Capture video;

void setup() {
  size(640, 480);
  frameRate(30);
  
  cols = width / cellSize;
  rows = height / cellSize;
  
  noStroke();

  // Start capturing default video input
  video = new Capture(this, width, height);
  video.start();
}


void draw() {
  
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
        int loc = x + y*video.width; 
      
        // Make a new color for this pixel of the video
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        color c = color(r, g, b,20);
      
          
        fill(c);
        ellipse(width - x, height - y, cellSize, cellSize);
        
      }
    }
  }
}
