/* Black and White Video Capture
   Goucher - Digital Media Programming FA14
   Ben Taylor
*/

import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  /* Define and start video capture */
  video = new Capture(this, width, height);
  video.start();
}

void draw() {  
  if (video.available()) {
    /* Read video frame and make it black/white */
    video.read();
    video.loadPixels();
    
    // Loop through video pixel matrix
    for (int i = 0; i < video.pixels.length; i++) {
       // Get color of this pixel
       color bw = video.pixels[i];
       // Get its brightness
       float howbright = brightness(bw);
       // Round its brightness to either 0 or 255
       howbright = round(howbright/255)*255;
       // Make a new color using 0 or 255
       bw = color(howbright);
       // Set the pixel to this new color
       video.pixels[i] = bw;
    }
    video.updatePixels();
    // Draw the video
    image(video,0,0);
  }
}

