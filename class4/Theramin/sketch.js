function setup() {
  createCanvas(800,500)
  osc = new p5.Oscillator()
  osc.setType('sine')
  osc.start()
}

function draw() {
  background(255,100)
  
  osc.freq( mouseX, 0.01 )
  
  fill(0,100,255,80)
  ellipse(mouseX,mouseY,40,40)
}

/* You can use...

  osc.start()
  osc.stop()
  
  osc.freq( 1 )   
    // sets the pitch of the oscillator
    // try a number between 0 and 2000
  
  osc.amp( 1 )   
    // sets the volume of the oscillator
    // ONLY use numbers between 0 and 1
  
  osc.pan( 0 )   
    // sets the location of the sound between left or right speakers
    // try numbers between -1 (left) and 1 (right)
  
*/