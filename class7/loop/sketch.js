function setup() {
  createCanvas(1000,300)
}

function draw() {
  for (var i=0;i<300;i=i+30) {
    ellipse(i,50,50,50)
  }
}