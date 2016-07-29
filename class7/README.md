# Generative Art III: Probability


### Lab

Try to solve these on your own. However, if you feel stuck, you can discuss it with a classmate.

.

##### 1. Counter

Create a sketch that counts upward when you click the sketch. Use console.log() or text() to display the number as it counts upward.

.

##### 2. Loops

Use a `for` loop to draw 10 circles in a row, evenly spaced.

.

##### 3. Probability

Create a sketch that loads a red background 50% of the time, and loads a blue background 50% of the time.

.

When you are done, please notify me so that I can view your solutions. Then, move on to working on your generative art project.




# Probability

This code gives a 50% chance of drawing a rectangle:

```

if ( random(1) > 0.5 ) {

  rect(50,50,50,50)
  
}
```

By putting it in a draw() function, you can create patterns over time.

```
var x = 0

function setup() {
  createCanvas(1000,200)
}

function draw() {
  fill(0)
  if ( random(1) > 0.5 ) {
    rect(x,50,10,50)
  }
  x = x + 10
}
```



# Markov Chains

##### [Markov Chains visually explained](http://setosa.io/ev/markov-chains/)

##### [Markov Chains explained in technical terms by a past Goucher student (video)](https://www.youtube.com/watch?v=LzJiUYQXF58)
