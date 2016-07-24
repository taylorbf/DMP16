/* Rain, Step 3
   Intro Digital Media Programming
   Ben Taylor                            */

var drop = []
var flood = 0;

function setup() {
  createCanvas(800,600)
  strokeWeight(2)
  
   for (var i=0;i<400;i++) {
    drop[i] = new Raindrop( random(width),random(height)*-1,random(100) + 1, random(10)+1 )
  }
}

function draw() {
  
  background(0)
  
  for (var i=0;i<drop.length;i++) {
    drop[i].draw();
  }
  
  // draw the flood
  fill("#559ADE");
  rect(0,height-flood,width,flood);
  if (flood >= height) {
     noLoop();
  }
  
}


/* RAINDROP OBJECT CONSTRUCTOR */

function Raindrop(x,y,trail,speed) {
  
  this.x = x
  this.y = y
  this.trail = trail
  this.speed = speed
  
}


Raindrop.prototype.draw = function() {
  
  stroke("#559ADE")
  line( this.x, this.y, this.x, this.y + this.trail )
  
  this.y += this.speed
  
  if (this.y > height) {
    this.y = 0 - this.trail
    flood = flood + 0.005;
  } 
   
}