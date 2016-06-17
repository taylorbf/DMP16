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
  println(frameRate);
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
       // Compare its brightness to our 5 custom ranges
       color c1;
       if (howbright<=49) {
          c1 = #ED3566;
       } else if (howbright>=50 && howbright<=99) {
          c1 = #693EED;
       } else if (howbright>=100 && howbright<=149) {
          c1 = #EEDD33; 
       } else if (howbright>=150 && howbright<=199) {
          c1 = #22ff88;
       } else {
          c1 = #000000;
       }
       // Set the pixel to this new color
       video.pixels[i] = c1;
    }
    video.updatePixels();
    // Draw the video
    image(video,0,0);
  }
}

