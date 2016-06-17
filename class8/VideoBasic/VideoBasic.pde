/* Absolute Basic Video Capture
   Goucher - Digital Media Programming FA14
   Ben Taylor (derived from GettingStartedCapture example)
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
    /* Read video frame and draw it to canvas as image */
    video.read();
    image(video, 0, 0);
  }
}

