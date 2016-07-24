function setup() {
  createCanvas(800,500)
  osc = new p5.Oscillator()
  osc.setType('triangle')
  osc.start()
}

function draw() {
  background(255,100)
  
  var volume = map(mouseY,height,0,0,0.6)
  
  osc.freq(mouseX,0.01)
  osc.amp(volume,0.01)
  
  fill(0,100,255,80)
  ellipse(mouseX,mouseY,40,40)
}
