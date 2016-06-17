# Shapes and Movement

This tutorial is for creating visual art within the [Processing](http://processing.org) programming environment. 

Processing is built upon the language of Java. Many components of this language can be used in Java and other popular languages.

## Structure of a Sketch

#### Setup and Draw

```
// the setup function gets called once when the sketch loads

void setup() {

}


// the draw function gets called 60 times per second.

void draw() {

}
```


## 2D Coordinate Plane

In Processing, the drawing canvas is understood as a 2D coordinate plane. This lets you draw and animate shapes with single-pixel accuracy.

The top left point of the canvas is (0,0). 

Distance is measured in pixels on an **x-axis** (moving to the right) and **y-axis** (moving down).

![2D Canvas](/images/2dplane.png)

Shapes are drawn using (x,y) coordinates.



## Shapes

#### point
Draw a 1-pixel point at an x/y position.

point( x, y )

```
point(10,10);
```



#### line
Draw a line from one x/y position to a second x/y position.

line( x1, y1, x2, y2 )

```
line(10,10,40,20);
```

#### rectangle
Draw a rectangle at an x/y position, with a certain width and height.

rect( x, y, width, height )

```
rect(10,10,100,20);
```

#### ellipse
Draw an ellipse at an x/y position, with a certain horizontal radius and vertical radius.

ellipse( x, y, radius1, radius2 )

```
ellipse(50,50,30,60);
```


#### 2D shapes review

via Fry and Raes

![Basic Processing Shapes](/images/shapes.png)



## Variables

Variables are one of the core building blocks of programming. Variables are your way of *remembering information* from one moment to the next. They are also your way of *transforming information*.

This week, we will use them to animate shapes.

It's important to choose the right kind of variable for your needs.

#### Boolean

A boolean can have one of two values: `true` or `false`. It is like a lightswitch, either on or off, like a binary operator.

`boolean IamBen = true;`

#### Integer

An integer is a whole number, such as `0`, `1`, `-2`, etc. It cannot be a decimal number.

`int x = 100;`

#### Float

A float number may be a decimal number *or* whole number.

`float money = 3.50;`

`float fingers = 10;`


#### String

A String is a piece of text. Specifically, it is non-code text, like regular English. A string is surrounded by quotation marks.

```
String greeting = "Yo, what's up?";
```

A string has a length.

```
int x = greeting.length;
```

`x` now equals 14, because that's how many characters the text has:

```
Y o ,   w h a t ' s     u  p  ?
1 2 3 4 5 6 7 8 9 10 11 12 13 14
```

## Operators

Variables may be operated on after they are defined.

```
int x = 10;
x = x / 2;
```
x is now 5

```
x = x + 2;
```
x is now 7



## Basic Animation

Using a combination of shapes, variables, and operators, we can make images move.

Study this sketch. What do you think will happen?

```
int x = 0;
int y = 10;

void draw() {

   ellipse(x,y,10,10);
   x = x + 1;

}
```
*Remember, draw() gets called over and over again, 60 times per second.*


## Reference

Fry & Raes, Ch 3 (Shapes) & Ch 4 (Variables)


## Context


## Reflection

What kind of variables do you see in your daily life?

## Assignment

• Commit an original sketch to GitHub. Due by 7 AM on Day 2.

• Bring in a real world example of each type of variable we discussed (String, integer, float, boolean). *Example: A boolean in my daily life is a lightswitch (it is either on or off).*