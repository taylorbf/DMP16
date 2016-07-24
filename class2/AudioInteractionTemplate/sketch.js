/**
 * A template for amplitude tracking and pitch tracking
 * Tons of code taken from other sources:
 * Mic Threshold by Daniel Shiffman
 * Pitch Tracking demo @ eyeO festival by Jason Sigal & Golan Levin
 */

var source, fft, lowPass;

// center clip nullifies samples below a clip amount
var doCenterClip = false;
var centerClipThreshold = 0.0;

// normalize pre / post autocorrelation
var preNormalize = true;
var postNormalize = true;


function setup() {
  createCanvas(windowWidth, windowHeight);
  noFill()

  source = new p5.AudioIn();
  source.start();

  lowPass = new p5.LowPass();
  lowPass.disconnect();
  source.connect(lowPass);

  fft = new p5.FFT();
  fft.setInput(lowPass);
}

function draw() {
  background(255,40)
  
  /* AMPLITUDE TRACKING */
  
  // Get the overall volume (between 0 and 1.0)
  var volume = source.getLevel()
  
  /* PITCH TRACKING */

  // array of values from -1 to 1
  var timeDomain = fft.waveform(1024, 'float32')
  var corrBuff = autoCorrelate(timeDomain)
  var freq = findFrequency(corrBuff)
  
  
  
  /* WRITE YOUR CODE THIS COMMENT 
   I have created two variables for you:
  
   volume
   volume is a number between 0 and 1
   It represents the volume of audio input from your computer
   
   freq
   freq is a number between 0 and 20000
   It represents the pitch of the incoming sound in hertz
  */

  // Draw
  fill(0,volume * 255)
  ellipse(100,100,200,200)
  
  //if (volume > 0.3) {
    colorMode(HSB)
    fill(freq/10,255,255)
    ellipse(300,100,200,200)
  //}
    
}



// accepts a timeDomainBuffer and multiplies every value
function autoCorrelate(timeDomainBuffer) {
  
  var nSamples = timeDomainBuffer.length;

  // pre-normalize the input buffer
  if (preNormalize){
    timeDomainBuffer = normalize(timeDomainBuffer);
  }

  // zero out any values below the centerClipThreshold
  if (doCenterClip) {
    timeDomainBuffer = centerClip(timeDomainBuffer);
  }

  var autoCorrBuffer = [];
  for (var lag = 0; lag < nSamples; lag++){
    var sum = 0; 
    for (var index = 0; index < nSamples; index++){
      var indexLagged = index+lag;
      if (indexLagged < nSamples){
        var sound1 = timeDomainBuffer[index];
        var sound2 = timeDomainBuffer[indexLagged];
        var product = sound1 * sound2;
        sum += product;
      }
    }

    // average to a value between -1 and 1
    autoCorrBuffer[lag] = sum/nSamples;
  }

  // normalize the output buffer
  if (postNormalize){
    autoCorrBuffer = normalize(autoCorrBuffer);
  }

  return autoCorrBuffer;
}


// Find the biggest value in a buffer, set that value to 1.0,
// and scale every other value by the same amount.
function normalize(buffer) {
  var biggestVal = 0;
  var nSamples = buffer.length;
  for (var index = 0; index < nSamples; index++){
    if (abs(buffer[index]) > biggestVal){
      biggestVal = abs(buffer[index]);
    }
  }
  for (var index = 0; index < nSamples; index++){

    // divide each sample of the buffer by the biggest val
    buffer[index] /= biggestVal;
  }
  return buffer;
}

// Accepts a buffer of samples, and sets any samples whose
// amplitude is below the centerClipThreshold to zero.
// This factors them out of the autocorrelation.
function centerClip(buffer) {
  var nSamples = buffer.length;

  // center clip removes any samples whose abs is less than centerClipThreshold
  centerClipThreshold = map(mouseY, 0, height, 0,1); 

  if (centerClipThreshold > 0.0) {
    for (var i = 0; i < nSamples; i++) {
      var val = buffer[i];
      buffer[i] = (Math.abs(val) > centerClipThreshold) ? val : 0;
    }
  }
  return buffer;
}

// Calculate the fundamental frequency of a buffer
// by finding the peaks, and counting the distance
// between peaks in samples, and converting that
// number of samples to a frequency value.
function findFrequency(autocorr) {

  var nSamples = autocorr.length;
  var valOfLargestPeakSoFar = 0;
  var indexOfLargestPeakSoFar = -1;

  for (var index = 1; index < nSamples; index++){
    var valL = autocorr[index-1];
    var valC = autocorr[index];
    var valR = autocorr[index+1];

    var bIsPeak = ((valL < valC) && (valR < valC));
    if (bIsPeak){
      if (valC > valOfLargestPeakSoFar){
        valOfLargestPeakSoFar = valC;
        indexOfLargestPeakSoFar = index;
      }
    }
  }
  
  var distanceToNextLargestPeak = indexOfLargestPeakSoFar - 0;

  // convert sample count to frequency
  var fundamentalFrequency = sampleRate() / distanceToNextLargestPeak;
  return fundamentalFrequency;
}