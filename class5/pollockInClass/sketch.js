
var color = ["#000","#0af"]

function setup() {
  // create our canvas
  createCanvas(1000,600)
  noStroke()
  

  for (var i = 0; i < 10000 ; i=i+1) { 
    // set our variables to new values
    var x = random(0,width)
    var y = random(0,height)
    var d = random(10,30)
    //pick a random color from our array
    var currentColor = random( colors )
    // use our new color for our paint drip fill
    fill(currentColor)
    // draw our paint drip circle
    ellipse(x,y,d,d)
  }
  
}

function mousePressed() {
  save("myterriblepollock.jpg")
}