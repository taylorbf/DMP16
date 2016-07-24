/* Rain, Step 1
   Digital Media Programming
   Ben Taylor                            */

  
var x = 10;
var y = 0;
var tail = 40;
var speed = 3;

function setup() {
  createCanvas(800,600);
  strokeWeight(2);
}

function draw() {
  
  background(0);
  
  stroke(0,200,255);
  line( x, y, x, y+tail );
  
  y += speed;
  
}