/* Rain, Step 3
   Intro Digital Media Programming
   Ben Taylor                            */

var drop;

function setup() {
  createCanvas(800,600)
  strokeWeight(2)
  
  drop = new Raindrop(10,0,40,3)
}

function draw() {
  
  background(0)
  drop.draw()
  
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
   
}