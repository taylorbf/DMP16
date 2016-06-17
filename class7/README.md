# Class 7: 1000 drops

## Array of Class Instances

Creating `drop1` and `drop2` is still slightly cumbersome.

Better to use a loop and an array!

```
Raindrop drop[] = new Raindrop[200];

for (int i=0;i<drop.length;i++) {
    drop[i] = new Raindrop();
}
```

This defines an empty array of raindrops, then fills the array using a loop. Each raindrop is placed at a random x location.

Let's break it down.

## Arrays

Often, you need to program a collection of related variables.

#### Example 1: An array of integers

Previously, you might program weather data like this:

```
forecastDay1 = 72;
forecastDay2 = 67;
forecastDay3 = 69;
forecastDay4 = 64;
forecastDay5 = 70;
```

Creating all of these variables can be cumbersome. This is a great place for an array!

```
int[] forecast = { 72, 67, 69, 64, 70  };
```

`forecast[0]` is now equal to 72. 

(**Note:** in arrays, we start counting at 0)

`forecast[1]` is now equal to 67.

`forecast[2]` is now equal to 69.

`forecast[3]` is now equal to 64.

`forecast[4]` is now equal to 70.

#### Example 2: An array of strings

```
String[] names = { "Ben", "Leo", "Ayumi"  };
```

`names[1]` is now equal to "Leo".

#### Example 3: Another way to create arrays.

Define an array that is 7 integers long

```
ing[] forecast = new int[7];
```

Then, define each part of the array individually:

```
int[] forecast = new int[7];
int[0] = 72;
int[1] = 67;
int[2] = 69;
int[3] = 64;
```

## Arrays and Loops

Arrays work well with loops.

This code will print each number in the forecast:

```
int[] forecast = { 72, 67, 69, 64, 70  };

for (int i = 0; i < 7; i = i+1 ) {
    println( forecast[i] )
}
```

- The first time through the loop, i is equal to 0, so it will print `forecast[0]` which is 72.
- The second time through the loop, i is equal to 1, so it will print `forecast[1]` which is 67.
- The third time through the loop, i is equal to 2, so it will print `forecast[2]` which is 69.


## Arrays and Classes

We have now created an array of type `integer` and an array of type `string`.

If we have a class called `Raindrop`, we could also make an array of type `Raindrop`!

```
Raindrop drop[] = new Raindrop[200];
```

We now have an **empty** array that has 200 empty cells. It will accept type `Raindrop`.

We could then create a **loop** to fill our array with new Raindrops.

```
for (int i=0;i<200;i++) {
    drop[i] = new Raindrop();
}
```

200 raindrops!!!!!!!!!

## Additional notes

##### .length

An array has a `length` property. Instead of having to manually tell your loop how many raindrops are in your array, you can use `drop.length`, which in this case will equal `200`.

```
for ( int i=0; i<drop.length; i++) {
    drop[i] = new Raindrop();
}
```
