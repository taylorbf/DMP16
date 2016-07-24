function setup() {
  createCanvas(windowWidth,windowHeight)
  osc = new p5.Oscillator()
  osc.setType('sine')
  osc.start()
}

function draw() {
  background(255)
  osc.freq(mouseX,0.02)
  osc.amp(mouseY/height,0.02)
  
  text("testing",50,50)
}