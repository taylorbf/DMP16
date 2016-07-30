var video;

function setup() {
  createCanvas(320, 240);
  // start video capture, using default computer camera
  video = createCapture(VIDEO)
  // set size of video capture
  video.size(320, 240)
  // hide the original video
  video.hide()
}

function draw() {
  background(255)
  // draw the current video frame onto the canvas
  // at a specific x, y, width, height
  image(video, 0, 0, 320, 240)
  
  // try changing these values
  // or adding interactivity with mouseX and mouseY
}