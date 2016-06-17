/**
 * Mirror 
 * by Daniel Shiffman.  
 * Turned into 3D spheres by BT
 *
 * Each pixel from the video source is drawn as a rectangle with rotation based on brightness.   
 */ 
 
import processing.video.*;


// Size of each cell in the grid
int cellSize = 40;
// Number of columns and rows in our system
int cols, rows;
// Variable for capture device
Capture video;


void setup() {
  size(960, 720, P3D);
  lights();
  frameRate(30);
  noStroke();
  
  cols = width / cellSize;
  rows = height / cellSize;

  // This the default video input, see the GettingStartedCapture 
  // example if it creates an error
  video = new Capture(this, width, height);
  
  // Start capturing the images from the camera
  video.start();  
}


void draw() { 
  background(0);
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
      
        float r = red(video.pixels[loc]);
        float g = green(video.pixels[loc]);
        float b = blue(video.pixels[loc]);
        // Make a new color with an alpha component
        color c = color(r, g, b);
      
        // Code for drawing a single rect
        
        fill(c);
        
        if (brightness(c)>=100) {  
          // SPHERE NOW
          pushMatrix();
          translate(width/2,height/2); 
          rotateY(map(mouseX, 0, width, 0, TWO_PI));
          rotateX(map(mouseY, 0, height, 0, TWO_PI));
          translate(-width/2,-height/2); 
          translate(x+cellSize/2,y+cellSize/2);
          sphere(cellSize/2);
          popMatrix();
        }
      }
    }
  }
}
