/* 
   Expressive algorithms
   Ben Taylor
*/

import processing.video.*;

int div = 50;
float sinoffset = 0;
float wave = 0;

Capture video;

void setup() {
  size(640,480);
  noStroke();
  
  video = new Capture(this, width, height);
  video.start();  
}

void draw() {
  
  if (video.available()) {
    video.read();
    video.loadPixels();
    
    background(255);
    wave += 0.01;
    for (int i=0;i<div;i++) {       // cycle top to bottom
      sinoffset =  PI * wave + i;
      for (int j=0;j<div;j++) {     // cycle left to right
        int distx = j * width/div;
        int disty = i * height/div;
        int loc = (video.width - distx - 1) + disty*video.width; // Reversing x to mirror the image

        color c = video.pixels[loc];
        fill(c, 100);
        
        sinoffset += PI/div;
        disty += sin(sinoffset)*20;
        ellipse(distx, disty, 16, 16);
      }  
    }
  }
}
