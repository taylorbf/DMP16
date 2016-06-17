# Class 6: Object-Oriented Programming

In the real world, objects are multiplicitous. The world does not contain just one raindrop, it contains many raindrops. They are all similar -- you could say they are created from the same **template** -- but each raindrop is slightly different, and each acts independently.

#### The Problem with Coding Many Raindrops

Sooner or later, you will be sketching out a raindrop:

```
float raindropX = 100;
float raindropY = 0;

void fall() {
  raindropY = raindropY - 5;
}

```

And it will dawn on you -- I want two raindrops! Then you will write something like this:

```
float raindropX = 100;
float raindropY = 0;

float raindrop2X = 100;
float raindrop2Y = 0;

void fall() {
  raindropY = raindropY - 5;
}

void fall2() {
  raindrop2Y = raindrop2Y - 5;
}

```

Then you will break down and cry, because now you want 100 raindrops, and that is going to take hours.

*There must be a better way*, you will think to yourself. 

There is!


## Class

A class is a way to create many self-contained, independent objects which are similar.

**You can think of a class definition as similar to a template. You can create any number of objects from that template.**

If you turn our fruitfly into a class, you can then create 100 fruitflies with little effort.

**Definition**

Creating the class template will look something like this:

```
class Raindrop {
  
  int x = 0;
  int y = 0;
  
  Raindrop(int setx) {
    x = setx;
  }
  
  void fall() {
  
    stroke(#559ADE);
    line(x,y,x,y+50);
    
    y = y + 5;
     
  }
  
}

```

**Instance**

Creating an instance of the Raindrop is now every easy:

```
Raindrop drop = new Raindrop(50)
```

Making it fall:  `drop.fall()`

Getting its y position:   `drop.y`

Create another instance of Raindrop:

```
Raindrop drop2 = new Raindrop(100)
```

Too bad I forgot my umbrella class.

## Class Definition

Let's break it down.

**Components of a Class Definition**

- Wrapper
- Internal variables
- Constructor function
	- Constructor arguments
- Internal functions

##### Wrapper

Your class must be wrapped in a class declaration

```
class Raindrop {


}

```

##### Internal Variables

Variables defined inside your class are **local**. They cannot be used outside your class.  

In this case, a new local x and y variable will be created **for each raindrop.**

```
class Raindrop {

	int x = 0;
    int y = 0;

}

```



##### Constructor Function & Arguments

Each class contains a constructor function which acts like a setup function. It is called once for each instance, at the moment the instance is created.

```
class Raindrop {

	int x = 0;
    int y = 0;

	Raindrop(int setx) {
   		x = setx;
  	}
  	
}

```

Here, we also include an argument, `setx`, which lets us set the x location of our raindrop.

##### Internal Functions (Class Methods)

Lastly, we can add any number of functions inside our class. These will be functions which *affect only our class instance*.

Here we create a `fall()` function which causes the raindrop to move and be redrawn


```
class Raindrop {
  
  int x = 0;
  int y = 0;
  
  Raindrop(int setx) {
    x = setx;
  }
  
  void fall() {
  
    stroke(#559ADE);
    line(x,y,x,y+50);
    
    y += 5;
     
  }
  
}

```

That is our full class definition. But, you could keep building it by adding any number of addition class methods.


## Class Instance

Now you can create an individual, self-contained raindrop:

```
Raindrop drop = new Raindrop(50)
```

To make it move:

```
drop.fall()
```

To make another raindrop:

```
Raindrop drop2 = new Raindrop(20)
```

To make it our second raindrop move:

```
drop2.fall()
```

Tomorrow we will look at ways to manage hundreds of instances of an object without needing to call them `drop`, `drop2`, `drop3`, etc.

## Object Oriented Programming

Using classes is an example of object-oriented programming (OOP).

In OOP, ideas/objects are programmed as self-contained entities with characteristics (properties) and actionable abilities (methods). 

In our case, `Raindrop` is our class and `drop` is our instance. `.fall()` is an action which our `drop` can do. This is written as `drop.fall()`.



## Assignment

Turn your *digital object* into a class.

Advice: Think in terms of designing an **object**, and consider the following:

- What does the object **do**? 
	- (Let this guide your Class Methods)
- What parts of the object will **change over time**?
	- (Let this guide your Internal Variables) 
- How will each instance be **different** than another? 
	- (Let this guide your Arguments)





