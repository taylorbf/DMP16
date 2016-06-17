/* Black and White Video Capture
   Goucher - Digital Media Programming FA14
   Ben Taylor
*/

import processing.video.*;
int rows = 10;
int cols = 10;
int cellwidth;
int cellheight;

Capture video;

void setup() {
  size(640, 480);
  /* Define and start video capture */
  video = new Capture(this, width, height);
  video.start();
  cellwidth = width / cols;
  cellheight = height / rows;
  println(cellwidth);
  println(cellheight);
}

void draw() {  
  if (video.available()) {
    /* Read video frame and make it black/white */
    video.read();
    video.loadPixels();
    
    // i will be our column
    for (int i = 0; i < cols; i++) {
      // j will be our row
      for (int j = 0; j < rows; j = j++) {
       // Get color of this pixel
       int pixelnumber = i * cellwidth + j * width * cellheight ;
       color currentcolor = video.pixels[pixelnumber];
       fill(currentcolor);
       rect(i*cellwidth,j*cellheight,cellwidth,cellheight);
      }
       
    }
  }
}

