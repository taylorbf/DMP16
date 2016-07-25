# Audio

For all the fun stuff you can do with audio in p5, check out:

File > Examples > Sound


## Context

[scribble.audio](http://scribble.audio) by Kyle Stetz

What kind of controls is he offering us? (Handles or buttons?)

What activities are happening behind the scenes that help organize our interactions?

How are your interactions *mapped* to audio events?

**Other instruments:**

[Theramin](https://www.youtube.com/watch?v=w5qf9O6c20o) -- how is it mapped?

[Gesture Follower](https://www.youtube.com/watch?v=5dIDpLPFFU4) for mobile device

[Chrome Music Lab](https://musiclab.chromeexperiments.com/Experiments)



## Some audio basics

#### Controlling the speaker

[Speaker movement in slow motion](https://www.youtube.com/watch?v=DwdGXCv3kW8)

[How speakers make sound](http://animagraffs.com/loudspeaker/)

##### Waveforms

[Sine, Triangle, Sawtooth](https://en.wikipedia.org/wiki/Sawtooth_wave#/media/File:Waveforms.svg)

#### MIDI vs frequency

[midi to frequency](http://en.wikiaudio.org/images/b/b4/MIDI_note_number_to_frequency_chart.png)

[MIDI note chart](https://freaksolid.files.wordpress.com/2013/03/midi_note_values.jpg)

#### Scales

```
var major = [ 60, 62, 64, 65, 67, 69, 71]

var minor = [ 60, 62, 63, 65, 67, 68, 70]
```

## Synthesis in p5

##### Creating oscillators

Create a sine wave oscillator

```
var osc = new p5.SineOsc()
```

Create a triangle wave oscillator:

```
var osc = new p5.TriOsc()
```
##### Frequency 

Good musical frequencies are in the **0 - 2000 range.**

Set the pitch to 200 hz over the course of .01 seconds:

```
osc.freq( 200, 0.05 )
```

Want to use MIDI pitch values?

```
var myNote = midiToFreq( 60 )
osc.freq( myNote, 0.05 )
```

##### Volume  

Good volumes are in the **0 - 1 range**. Anything more than that will be very very loud!

Set the volume to .5 (half volume) over the course of .01 seconds:

```
osc.amp( .5, .01 )
```


#### Your mouse can control frequency, volume, or another aspect of sound

mouseX will be a number between 0 and the width of your canvas. Therefore, it works reasonably well as a frequency value. You may still want to use `map()` to adjust its range.

```
osc.freq( mouseX )
```

Or use your mouseY to control the volume:

```
// use our volume variable to set the amplitude of the oscillator
osc.amp( mouseY / height )
```



** *Make sure you do not explode your eardrums with a volume greater than 1!!!* **

For this reason I recommend using `constrain()` before using your volume. Read about constrain in the [reference]().


```
// use our mouse Y movement to control volume
var volume = mouseY / height

// Limit the numbers to between 0 and 1, no matter what happens
volume = constrain(volume, 0, 1)

// use our volume variable to set the amplitude of the oscillator
osc.amp( volume )
```




## Lab

Use your knowledge of interactivity programming to make one of our audio templates **interactive**.

#### Step 1

Download one of the audio templates

[Oscillator Instrument Template]()

[Audio Playback Template.]()


#### Step 2

Use interactions like `keyTyped()`, `mousePressed`, or `mouseX` to make the audio interactive in some way.

Use the [class2](https://github.com/taylorbf/DMP16/tree/master/class2) reference as a guide for mouse and key interaction. Also use McCarthy book and p5 reference online!

.

This is part of class participation and is not a formal project -- have some fun with it! If you find that you enjoy working with audio in p5, you can use audio as the foundation of your generative art project (Project 2) later this week.
	

