# Interaction and Logic


## Logic

#### if

The core building block of programming logic is the `if` statement.

Any time you want a piece of code to happen sometimes, but not always, you want to use `if`.

```
int x = 10

if (x < 5) {

	// code in here only happens if x is less than 5
	
}
```

#### if/else

```
int x = 10

if (x < 5) {

	// code in these brackets won't happen
	
} else {

    // code in these brackets will happen

}
```

#### if this or that

"if x is 5 OR x is 10"

```
int x = 10

if (x == 5 || x == 10) {

	// code in here will happen
	
} 
```

#### if this and that

"if x is greater than 5 AND less than 15"

```
int x = 10

if (x > 5 && x < 15) {

   // code in here will happen
	
} 
```


## Interaction: Mouse

#### mousePressed()

```
void mousePressed() {

    // code in here will happen on mouse click

}
```

Follow the same paradigm for:

#### mouseMoved()

#### mouseReleased()

#### mouseDragged()

#### mouseWheel()

#### mouseMoved()



## Interaction: Keyboard

#### keyPressed()

```
void keyPressed() {

    // code in here will happen when you type

}
```

**keyCode**

Inside the keyPressed function, the `keyCode` variable holds the ASCII value of the letter you typed.


## Logic + Interaction

Logic and interaction work well together. `if` can be used to control your interaction.

You can model a simple pencil:

```
void draw() {

	if (mousePressed) {
		point(mouseX,mouseY);
	}

}
```

Or you can set a logical condition on the mouse position:

```
void draw() {

	if (mouseX > 50) {
		background(255);
	} else {
		background(0);
	}

}
```

## Reference

Fry & Raes, Chs 5 & 6.


## Context


## Reflection

Consider examples from your life in which your interaction with an object changes its color or shape.	

## Assignment

• Project 1: Create an interactive artwork using Processing. **Due Day 4.**

• Bring in an example of logic you see in your daily life. 

• Bring in two examples of interaction you see in your daily life. One should be a binary (button) interaction, one should be a linear (handle) interaction.