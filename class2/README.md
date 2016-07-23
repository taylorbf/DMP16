# Interaction and Logic



## Context

[jazz.computer](http://jazz.computer)  by Yotam Mann (mouse wheel)

[XYZ app](https://vimeo.com/39859278) JODI (device motion)

[Motion Traces](http://www.flong.com/projects/a1/) Golan Levin (video motion detection)

[Messa di Voce](http://www.flong.com/projects/messa/) Golan Levin (audio interaction)

"Go Fly A Kite" interaction exercise, *Creative Code*, John Maeda

[Interaction Design](https://vimeo.com/83683447) talk by Bill Verplank


## Interaction Templates

-	mouse
-	keyboard
-	phone (multitouch)
-	phone (gesture)
-	video (motion detection)
-	audio (pitch/volume)



## Interaction: Mouse

#### [mousePressed()](https://p5js.org/reference/#/p5/mousePressed)

```
function mousePressed() {

    // code in here will happen when the mouse is clicked

}
```

Follow the same paradigm for:

#### [mouseMoved()](https://p5js.org/reference/#/p5/mouseMoved)

#### [mouseReleased()](https://p5js.org/reference/#/p5/mouseReleased)

#### [mouseDragged()](https://p5js.org/reference/#/p5/mouseDragged)

#### [mouseWheel()](https://p5js.org/reference/#/p5/mouseWheel)

#### [mouseMoved()](https://p5js.org/reference/#/p5/mouseMoved)

.


## Interaction: Keyboard

#### [keyTyped()](https://p5js.org/reference/#/p5/keyTyped)

```
function keyTyped() {

    // code in here will happen when you press a keyboard button

}
```

**key**

Inside the keyPressed function, the `key` variable holds the name of the letter you typed, such as "a" for the "a" button.


## Logic

#### [if](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else)

The core building block of programming logic is the `if` statement.

Any time you want a piece of code to happen sometimes, but not always, you want to use `if`.

```
var x = 10

if (x < 5) {

	// code in here only happens if x is less than 5
	
}
```

#### if/else

```
var x = 10

if (x < 5) {

	// code in these brackets won't happen
	
} else {

    // code in these brackets will happen

}
```

#### if this or that

if x is 5 OR x is 10

```
var x = 10

if (x == 5 || x == 10) {

	// code in here will happen
	
} 
```

#### if this and that

"if x is greater than 5 AND less than 15"

```
var x = 10

if (x > 5 && x < 15) {

   // code in here will happen
	
} 
```


## Logic + Interaction

Logic and interaction work well together. `if` can be used to control your interaction.

#### Mouse

You can model a simple pencil:

```
function draw() {

	if (mouseIsPressed) {
		point(mouseX,mouseY);
	}

}
```

Or you can set a logical condition on the mouse position:

```
function draw() {

	if (mouseX > 50) {
		background(255);
	} else {
		background(0);
	}

}
```

#### Key

You can use `if` to perform different actions depending on which key you type.

```
function keyTyped() {

	if (key == "a") {
	
	    // code in here will happen when the "a" key is typed
	
	}

}
```


## Mapping

**EDIT**

So, you have `mouseX` and `mouseY`. What will you do with them?

Put another way, how will you *map* your mouseX value to a visual result? 

**Mapping** defines a relationship between a control source and a resulting action. Mapping is one of the core activities of interaction development.

If you want to use `mouseX` to control the size of a circle, this will involve *mapping* the `mouseX` values to a new scale -- the desired range of circle sizes. 

`mouseX` will have a value between 0 and the width of your browser.

You may want it to control the size of a circle with a maximum size of 40 pixels. 

You could do this with some math... `var circleSize = (mouseX/width) * 40`

Or, you could use the [map](http://p5js.org/reference/#/p5/map) function! It might be useful to you.



## Reference

McCarthy, Chapter 5


## Reflection

Consider examples from your life in which your interaction with an object changes its color or shape.	

## Assignment

• Project 1: Create an interactive artwork using p5. See Syllabus for details. **Due Day 4.**

• Bring in two examples of interaction you see in your daily life. One should be a binary (button) interaction, one should be a linear (handle) interaction.
