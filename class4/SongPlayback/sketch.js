var song;

function preload() {
  song = loadSound('assets/lucky_dragons_-_power_melody.mp3')
}

function setup() {
  createCanvas(720, 200)
  background(255,0,0)
  
  slider = createSlider(0, 255, 100);
  slider.position(10, 10);
  slider.style('width', '80px');
  
  song.loop()
  song.rate( 1 ) 
}

function draw() {
  console.log( slider.value() )
  var speed = map(slider.value(),0,255,0,4)
  song.rate(speed)
}


/* You can use...

  song.play()
  song.loop()
  song.stop()
  
  song.rate( 1 )   
    // sets the playback speed of the song
    // try a number between 0 and 4
  
  song.amp( 1 )   
    // sets the volume of the song
    // ONLY use numbers between 0 and 1
  
  song.pan( 0 )   
    // sets the location of the song between left or right speakers
    // try numbers between -1 (left) and 1 (right)

  one final tip:
  song.isPlaying()    
    // returns a boolean
  
*/
