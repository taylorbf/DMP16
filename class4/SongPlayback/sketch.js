var song;

function preload() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3')
}

function setup() {
  createCanvas(720, 200)
  background(255,0,0)
  fill(255)
  text("click to play or stop",10,10)
}

function mousePressed() {
  // song.isPlaying() returns a boolean!!
  if ( song.isPlaying() ) { 
    song.stop()
    background(255,0,0)
  } else {
    song.loop()
    background(0,255,0)
  }
}

function draw() {
  song.rate(1)
  
  volume = 1
  volume = constrain(volume, 0, 1)
  song.amp(volume)
  
  pan = 0
  pan = constrain(pan, -1, 1)
  song.pan(pan)
}
