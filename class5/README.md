# Class 5: Reusable Code



## Function

Functions are encapsulated pieces of code that can be called any number of times, without needing to be copied and pasted.

Function declarations usually begin with the `void` keyword, meaning they do not *return* anything.

First, you declare a function. At this point, the code inside the function grow() will **not** be executed.

```
int height = 0;

void grow() {
  height = height + 1;
}
```

Later, you can execute the function ...

```
grow();
```

... any number of times.

```
grow();
grow();
grow();
```

#### Argument

Often, you will want to write a function which acts *slightly differently each time*, even if it acts mostly the same.

You can do this by passing a little bit of extra information into the function when it is called. This information is called an argument.

In this example, an argument is added to our `grow` function. The argument is given the name `inches`.

```
int height = 0;

void growBy(int inches) {
  height = height + inches;
}
```

Now you can grow by different amounts:

```
growBy(1);
// height is now 1
growBy(6);
// height is now 7
growBy(3);
// height is now 10
```

As you can see, writing functions can make your code more readable.

You can add as many arguments to a function as you want.

```
void growBy(int feet, int inches) {
   height = height + (feet*12) + inches;
}

growBy(1,6)
```

## Reference


## Context


## Reflection


## Assignment

HW: Finish programming the essential components of your `digital object`. This should include:

- a few variables that describe characteristics of the object.
- at least one function that changes a characteristic of your object.



	
