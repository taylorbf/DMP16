/* Rain, Step 2
   Intro Digital Media Programming
   Ben Taylor                            */

var drop;

function setup() {
  createCanvas(800,600)
  strokeWeight(2)
  
  drop = new Raindrop()
}

function draw() {
  
  background(0)
  drop.draw()
  
}


/* RAINDROP OBJECT CONSTRUCTOR */

function Raindrop() {
  
  this.x = 10
  this.y = 0
  this.trail = 40
  this.speed = 3
  
}


Raindrop.prototype.draw = function() {
  
  stroke("#559ADE")
  line( this.x, this.y, this.x, this.y + this.trail )
  
  this.y += this.speed
   
}