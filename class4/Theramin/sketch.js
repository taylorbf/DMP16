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
