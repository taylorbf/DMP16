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
       color currentcolor = video.pixels[i];
       // Get its brightness
       float howbright = brightness(currentcolor);
       
       if (howbright > 0 && howbright <= 70 ) {
         
          video.pixels[i] = color(0,0,0);
          
       } else if (howbright > 70 && howbright <= 150) {
         
          video.pixels[i] = color(220,0,200);
          
       } else if (howbright > 150 && howbright <= 220) {
         
          video.pixels[i] = color(0,230,255);
          
       } else {
         
          video.pixels[i] = color(255,255,0);
          
       }
     
    }
    video.updatePixels();
    // Draw the video
    image(video,0,0);
  }
}

