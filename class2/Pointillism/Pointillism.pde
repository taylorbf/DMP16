//Sarah, take this as a template and modify it in an interesting way.
//Try changing values or drawing different shapes instead of rectangles.
//How might you make it more paintbrush-y or impressionist-y?
//Good luck! Let me know if I need to further explain a piece.


PImage rainbow;

//define how many rows and columns to divide the image into
//try changing their values!
int rows = 10;
int columns = 10;

void setup() {
  size(500,500);
  noStroke();
  rainbow = loadImage("wheel.png");
  // get the image's pixels. 
  //the result will be in rainbow.pixels
  rainbow.loadPixels();
}

void draw() {
  // determine the pixel size of the rows and columns
  int rowsize = int(rainbow.height / rows);
  int colsize = int(rainbow.width / columns);
  
  // i created these to easily scale my image to full screen
  // you might want to do something different
  float scaleX = width / rows;
  float scaleY = height / columns;
  
  // the magic!
  // loop through rainbow.pixels and draw rectangles instead of drawing the whole picture
  for (int i=0; i<columns; i++) {
    for (int j=0; j<rows; j++) {
        // pxnum is the spot in the rainbow.pixels array for the "current pixel"
        int pxnum = i * colsize + j * rowsize * rainbow.width;
        // use the "current pixel" to set our fill color
        fill(rainbow.pixels[pxnum]);
        // draw the rectangle
        rect(i*scaleX,j*scaleY,scaleX,scaleY);
    }
  }
}
