# Video Signal Processing

![](pic.jpeg)![](pic.jpeg)![](pic.jpeg)


## Basic Video In & Out

The `processing.video` library contains a Capture class for accessing a computer's video camera.

This code reads almost like plain English:


```
import processing.video.*;
Capture video;

void setup() {

  // Define and start video capture
  video = new Capture(this, width, height);
  video.start();
  
}

void draw() {  
  
  // Read video frame and draw it to canvas as image
  if (video.available()) { 
    video.read();
    image(video, 0, 0);
  }
  
}
```

See the VideoBasic sketch in this folder to try out this code.

## Video Processing

Much more can be done to alter the video stream before it is drawn.

### What is a Video, Really?

A video is a series of images. Each image is called one "frame" of the video.

Each frame of a video is *just data*. Specifically, it is a long list of numbers. **More specifically, it is a list of color information for each pixel in the video.**

This list of color data is an **Array** of colors. This makes sense, because it is a list of related information.

### Entering the Matrix

Within the `draw()` function, you can use `video.loadPixels()` to acces the video's array of pixels.

You can then loop through the array and make changes to individual pixels.

```
void draw() {  
  if (video.available()) {
  
    video.read();
    video.loadPixels();
    
    // Loop through video pixel array
    for (int i = 0; i < video.pixels.length; i++) {
    
            
   		// Access the current pixel  
       	color pxcol = video.pixels[i];
       	
       	
       	// Do something creative here with the pixel's color
       	
       
       	// Set the pixel color
       	video.pixels[i] = pxcol;
      
      
    }
    
    video.updatePixels();
    image(video,0,0);
  }
}

```


### Ideas for Altering Pixels

##### Set every pixel to the same color 

```
video.pixels[i] = rgb(0,125,255);
```

##### Make a black and white video

Get each pixel's brightness. If it is less than average, make the pixel black. Otherwise, make the pixel white.

```
float pxbright = brightness( video.pixels[i] );

if (pxbright < 127) {
    video.pixels[i] = color(0)
} else {
	video.pixels[i] = color(255)
}

```

Try adding more "if" conditions to this. 

Try making it interactive with the mouse.


### Useful tools

##### Brightness

```
float value = brightness( pxcol );
```

`value` will now be a number, 0-255, which you could use in some way.

##### Hue

```
float value = hue( pxcol );
```

`value` will now be a number, 0-255, which you could use in some way.

##### Extract Red, Green, or Blue Level

Extract the red level from the pixel's color

```
float value = red( pxcol );
```

`value` will now be a number, 0-255, which you could use in some way. 




## Context


## Assignment

Propose an idea for your final project, which will be due on the last day of the online portion of the class. This project may involve:

- video processing
- further exploration of your "class" (but it should be significant)
- exploration of a new "class" 
- another idea!
	