# Creating Objects

In the real world, objects are multiplicitous. The world does not contain just one raindrop, it contains many raindrops. They are all similar -- you could say they are created from the same **template** -- but each raindrop is slightly different, and each acts independently.

This is true also of most things -- plants, animals, planets, man-made products, etc.

#### The Problem with Coding Many Raindrops

Sooner or later, you will be sketching out a raindrop:

```
var x = 100;
var y = 0;

function fall() {
  y = y - 5;
}

```

And it will dawn on you -- I want two raindrops! Then you will write something like this:

```
var x1 = 100;
var y1 = 0;

var x2 = 100;
var y2 = 0;

function fall() {
  y1 = y1 - 5;
}

function fall2() {
  y2 = y2 - 5;
}

```

Then you will decide you want 1000 raindrops, and then you will break down and cry that is going to take hours.

*There must be a better way*, you will think to yourself. 

There is!


## Objects

A JS Object is a way to create self-contained, independent entities which are similar to each other.

**You can think of a class definition as similar to a template. You can create any number of objects from that template.**

If you turn our raindrop into an object, you can then create 100 raindrops with little effort.

#### Definition

Creating the template -- called an **Object Constructor** -- will look something like this:

```
function Raindrop( dropX ) {
  
  this.x = dropX;
  this.y = 0;
    
}

Raindrop.prototype.fall = function() {
  
  stroke("#559ADE");
  
  line( this.x, this.y, this.x, this.y+50);
    
  this.y = this.y + 5;
     
}

```

**Instance**

Creating an instance of the Raindrop is now every easy:

```
var drop = new Raindrop(50)
```

Making it fall:  `drop.fall()`

Getting its y position:   `drop.y`

Create another instance of Raindrop:

```
var drop2 = new Raindrop(100)
```


## Let's break it down...


**Components of an Object Constructor**

- Wrapper with parameters
- Internal variables (properties)
- Object functions (methods)

##### Wrapper

Your object constructor must be wrapped in a function declaration

```
function Raindrop() {


}

```

##### Internal Variables

Variables defined inside your Object are **local**. They cannot be used outside your Object.  

In this case, a new local x and y variable will be created **each time you make a new raindrop.**

```
function Raindrop() {

	this.x = 0;
    this.y = 0;

}

```



##### Parameters

We include a parameter, `dropX`, which lets us set the x location of our new raindrop.

```
function Raindrop( dropX ) {

	this.x = dropX;
    this.y = 0;

}

```

For example, this will now create a raindrop with an x of 40:

```
var drop = new Raindrop( 40 )
```



##### Functions (Methods)

Lastly, we can add any number of functions to our class. These will be functions which *affect only our class instance*.

Here we create a `fall()` function which causes the raindrop to move and be redrawn


```
function Raindrop( dropX ) {
  
  this.x = dropX;
  this.y = 0;
    
}

Raindrop.prototype.fall = function() {
  
  stroke("#559ADE");
  
  line( this.x, this.y, this.x, this.y+50);
    
  this.y = this.y + 5;
     
}
```

That is our full class definition. But, you could keep building it by adding any number of addition class methods.


## Object Instance

Now you can create an individual, self-contained raindrop:

```
var drop = new Raindrop(50)
```

To make it move:

```
drop.fall()
```

To make another raindrop:

```
var drop2 = new Raindrop(20)
```

To make it our second raindrop move:

```
drop2.fall()
```

## A Hundred Instances

```
var drops = []

for (var i=0;i<100;i++) {
	drops[i] = new Raindrop( random(width) )
}
```

See `Rain4` example!

Also the McCarthy chapter, listed below.


## Object Oriented Programming

Using JS objects harnesses the real power of object-oriented programming (OOP).

In OOP, ideas/objects are programmed as self-contained entities with characteristics (properties) and actionable abilities (methods). 

In our case, `Raindrop` is our class and `drop` is our instance. `.fall()` is an action which our `drop` can do. This lets us more easily model the world around us and create complex digital worlds!


## Reading

Read the McCarthy chapter on loops and objects.

## Assignment

**Create your own JS Object and use it to create a generative artwork.**

Guidelines:

- Your object should be active -- that is, it should be able to move or change in some way.
- You should use multiple instances of your object in your artwork.
 

Advice: 

Think about objects in the real world. Consider the following:

- What does the object **do**? 
	- (These would be the functions of the Object)
- What parts of the object **change over time**?
	- (These would be the variables of the Object) 
- How is each instance **different** than the others? 
	- (These would be the parameters of the Object)
	
Let me know if you have questions!





