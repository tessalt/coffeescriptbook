# Coffeescript for beginners

## Math

Let's start with some simple math. 

Coffeescript supports all your familiar math operators: `+ - * \` (add, subtract, multiply, divide), plus one you may be unfamiliar with: `%` or "modulus". 

A lot of what you'll be doing while prototyping interactions is just simple math.

Quick refresher on what you'll be up against: 

## Order of operations

So just like you learned in high school, BEDMAS still applies. If you want some addition and subtraction to happen before the multiplication and addition, put it in brackets. 

Open up your Coffeescript console and observe: 

```
10 + 20
# => 25

150 - 5 * 20
# => 50

(150 - 5) * 20
# => 2900
```

## Variables

So none of that is terribly useful until we start adding variables into the mix. Variables are containers you can store data in. All sorts of data. Numbers, words, letters, lists, and more. You create a variable with an equals sign: 

```
a = 50

a
# => 50
```

You can treat a variable exactly as you would treat whatever you put in the container: 

```
a = 50

a * 10
# => 500
```

## Types of data

There are all different types of data you can program with, and some of them have special abilities and uses. 

### Numbers

Numbers are the simple ones. Numbers are numbers. `200`, `-10`, `4000` are all numbers. Don't include commas or spaces in your numbers, and you'll be ok. 

### Strings

When you're working with letters or punctuation, you're working with `strings`. Strings come in quotation marks. **Anything in quotation marks is a string**. You can use single quotes or double quotes, but there are fewer complications when you use double-quotes.

```
"This is a string"
'This is also a string'
```

You can squish strings together using a `+` sign. This is called *concatenating*. 

```
"My name is " + "Tessa"
# => "My name is Tessa"
```

## Doing things with numbers and strings

Since anything in quotation marks is a string, you can end up with numbers that are actually strings (becasue they're in quotation marks). `"40"` is a string, `40` is a number. 

Some strange things can happen if you treat strings like numbers: 

```
"50" + "50"
# => "5050"
```

Instead of adding the numbers together mathemtically, the two strings were squished together. If one of the values is a string, and one is a number, we get the same result: 

```
"50" + 50
# => "5050"
```

In some cases, mixing numbers and strings will work out okay, but it's best to avoid it when you're trying to do math. 

We can mix strings and numbers on purpose: 

```
"Toronto is " + 825 + " km from Chicago"
# => Toronto is 825 km from Chicago
```

## Using variables

Other than some simple math, we can't do much of interest with just numbers and strings and mathematical operators. One of the most powerful tools we have for organizing our code is *variables*. Variables let you *assign* a value to an arbitrary symbol for later reference. A variable is a box you can put values into. Any kind of value, like a string or a number. Variables are assigned using the `=` operator.

```
name = "Tessa"

print name

# => "Tessa"

age = 26

print age

# => 26
```

**Note** The `print` command just outputs the result of our code to a console. In the browser, `print` doesn't exist, but you can use `console.log` for the same purpose.

A variable will retain the value you assigned to it until you change it. You can change a variable any time in your program (hence the name). 

```
color = "green"

print "my favorite color is " + color
# => "my favorite color is green"

color = "red"

print "my new favorite color is " + color
# => "my new favorite color is red"
```

There are a couple rules about variable names: 

- variable names can't contain spaces
- variable names can't start with numbers
- variable names can contain upper case and lower case characters
- variable names can't contain punctuation other than `_`

There are some common naming conventions and patterns for variable names. When a variable name is more than two words, you can combine the two words together using "camel casing" or underscores. 

```
my_name = "Tessa"

myName = "Tessa"
```

## Boolean values

Booleans are values that are either true or false. They're indicated with just the words `true` or `false` without quotation marks. 

```
myBoolean = true
```

Boolean values are often the result of making comparisons:

```
10 > 9

# => true

9 < 8

# => false
```

You can assign the *result* of a comparison to a variable:

```
theTruth = 10 < 5

print theTruth
# => false
```

### Comparing for equality

In regular math, you compare values using the `=` sign. As you hopefully recall, we're already using the `=` sign to assign variables (`myVar = 10`), so it would be confusing and error-prone for us to also use `=` for comparison. 

In CoffeeScript, you can use the `is` operator to check to see if two values are the same. 

**Note**: you may see code where `==` is used to compare values. In CoffeeScript `is` is a shortcut for `==`. We'll use `is` because it's easier to read. 

```
5 is 5

# => true

num = 5

num is 5

# => true

num is 10

# => false
```

To negate a condition you use the keyword `not`. In place of `is not` you can use the shortform `isnt`

```
num = 5

num isnt 10
# => true
```

## Conditional statements

Comparing variables is only useful if we do something with the outcome of the comparison. That's what conditional statements are for. CoffeeScript uses simple `if/else` statements to run different code in different scenarios: 

```
num = 14

if num >= 16
  print "you can learn to drive"
else
  print "you're too young to learn to drive"

# => "You're too young to learn to drive"
```

### Indentation

If you've ever looked at other programming languages like Java or JavaScript before, you might have noticed that they have a lot of symbols like semicolons and parentheses. CoffeeScript avoids using a lot of these symbols, which can make it much easier to read and write. To get away with this, in CoffeeScript we need to follow certain rules about indentation. In the above example, the indentation within the `if` and `else` statements is important. It indicates that the indented code "belongs" to the `if` statement, and so will only be run if the condition is true. 

## Comments

Sometimes you want to leave notes for yourself or others in your code. Maybe to explain what something does, or remind yourself to come back to something, or to help with organization. Comments don't get read by the computer when your code runs, so you can put whatever you want there. 

In coffeescript, code that starts with a `#` will be treated as a comment and ignored. 

```
# this is a comment. It doesn't do anything. But it's nice to read. 
```

## Functions

Functions wrap up a bit of code for re-use. For example, the "age check" code that we wrote above can be wrapped up in a function so that we can re-use it on every young-looking driver we encounter. 

When you make a function, you want to be able to *use* it somehow, so you have to have a way to reference it. We can do this by assigning our function to a variable: 

```
checkAge = 
```

To indicate that we're putting a function in this variable, we use the `->` arrow

```
checkAge = ->
  # we'll put the code for checking age here
```

The code above just says "checkAge is a function" but it doesn't do anything yet. To "call" our useless function (calling a function = using a function), we use parentheses. 

```
checkAge = ->
  # doesn't do anything yet

checkAge()
```

The `()` part basically means "go". It tells the computer "run the function in the checkAge variable"

So let's make our `checkAge` function actually do something: 

```
checkAge = ->
  if age >= 16
    print "Carry on"
  else
    print "Get out of the car please"
```

**Note**: the indentation is again significant. All the code wrapped in the `checkAge` function needs to be indented one level to indicate that it belongs to it. 

Now we can call our function: 

```
age = 16

checkAge()
# which will output "Carry on" because we set the age variable to 16
```

Lets try it with a couple young drivers: 

```
age = 15

checkAge()

# => "Get out of the car please"

age = 18

checkAge() 

# => "Carry on"
```

### Functions with arguments

Functions can be even more useful if we can give them values to work with. These values are called *arguments*. If we give `checkAge` an age argument, we don't need to have a separate age variable.

Let's rewrite `checkAge` to accept an `age` *argument*:

In CoffeeScript, we can give a function the ability to accept arguments by adding parentheses containing the argument name before the `->` sign. 

```
checkAge = (age) ->
  if age >= 16
    print "Carry on"
  else
    print "Get out of the car please"
```

Once you've added the argument name to the parentheses, you'll be able to reference whatever `age` is using its name. 

`age` gets its value when the `checkAge` function is called. To give `checkAge` an `age` argument, we just put the value in the parentheses: 

```
checkAge(17)

# => "Carry on"
```

Functions can take multiple arguments: 

```
patrol = (age, speed) ->
  if speed > 60
    if age >= 16
      print "Happy speeding ticket"
    else
      print "Get out of the car, kid"
```

In this example, the `patrol` function also takes a `speed` argument. Now we only do the age check if the speed is greater than 60. Budget cuts. 

Note how all the code nested under the `if speed > 60` statement is indented an additional level. 

To use our new `patrol` function, we now have to put two values in the parentheses: the first one is the age, the second one is the speed: 

```
patrol(17, 70)

# => "Happy speeding ticket"

patrol(17, 40)

# => ... (nothing happens)

patrol(15, 90)

# => "Get out of the car, kid"
```

If we forget to add the the `speed` argument: 

```
patrol(16)

# => undefined
```

### Using functions

When you're prototyping animations, there's a good chance you won't have to write a whole lot of functions yourself. You will however be *using* quite a few functions, most of them are provided by the framer.js library. 

That's where functions become really useful: when you can share them around. The folks beheind Framer figured out how to do all sorts of useful things related to manipulating pixels on a screen, so they wrapped up all that useful code into functions that you can use. 

Let's say we're using a library that provides a `licensePlateCheck` function. It takes one argument, which is a license plate. It does all sorts of complicated things to associate that license number with a person, find out whether that person has a criminal record, if there are any warrants for their arrest, or if the car is stolen. To use this function, you don't need to know any of that. All you have to know is that it takes one argument, and that argument needs to be a license plate. For any given license plate, the `licensePlateCheck` function will tell you `true` if the plate is associated with criminal activity, and `false` if it's not. 

We also need to know what type of argument to provide. In this case, we need to know that the `licensePlate` argument is a string. Which makes sense, since it's a mix of numbers and letters.

```
licensePlateCheck("BAD455")

# => true
```

And that's all we need to do. 

## Other types of data

Strings, numbers, and booleans are the simplest kinds of values in coffeescript, but we can do more with more complex data types, like arrays and objects. 

### Arrays
Arrays are lists or collections of multiple items. Say we wanted to keep track of a list of fruits:

```
fruits = ["apples", "oranges", "bananas"]
```

Arrays have some built in *methods* (functions that they can use) for finding out information about them: 

```
fruits.length 

# => 3
```

You can access elements in an array by their *index*. The index is the element's position within the array. 

**Arrays are zero-indexed**. This means that the first item in the array is item 0, and the second item is item 1. This can be a little confusing at first, but you'll get used to it. 

To access an element in an array, we use square brackets containing the index of the element we're looking for. For example, if we want go get "oranges" from the fruits array: 

```
fruits = ["apples", "oranges", "bananas"]

print fruits[1]

# => "oranges"
```

### Adding to arrays

You can add new items to an array with the method `push`. `push` adds the item you specify to the end of the array. 

```
fruits.push("kiwis")

print fruits

# => ["apples", "oranges", "bananas", "kiwis"]
```

### Looping through arrays

Arrays can be very powerful in CoffeeScript, because they let you repeat certain functionality over and over with different items in an array. 

One of the most common ways to control your program is by using *loops*. Loops let you do something for every item in an array. 

`toUpperCase` is a method that you can use on strings to capitalize them

If we wanted to print out each element in our array of fruits in capital letters, we could do: 

```
fruits[0].toUpperCase()
# => "APPLES"

fruits[1].toUpperCase()
# => "ORANGES"

fruits[2].toUpperCase()
# => "BANANAS"
```

But since we have an array containing our list of fruits, we can do this a bit more efficiently: 

```
for fruit in fruits
  fruit.toUpperCase()

# => "APPLES"
# => "ORANGES"
# => "BANANAS"
```

In english, we read that as "for every fruit in our list of fruits, capitalize it"

If we break it down, the `for` loop does two things: it executes our code once for each item in the array, *and* it lets you refer to the currently "active" element by whatever name you like. 

The code `for fruit in fruits` tells us that each time through the array, we'll have a variable called `fruit`. That variable `fruit` will refer to the item we're working with each time through. So the first time through the array, `fruit` will refer to "apples", the second time it will refer to "oranges", etc. 

What if we had a lineup of cars to run license checks on? 

```
plates = ["BRR010", "BUU888", "NNB001", "MBB991"]
```

Let's check each plate for criminal activity with a `for` loop: 

```
for plate in plates
  licensePlateCheck(plate)

# => false
# => true
# => false
```

**Again, the indentation is significant**. The indentation of the second line means that code gets executed only inside the `for` loop. 

### Objects

Objects are one of the most useful data types in coffeescript. An object is a collection of *properties*. In programming, a *property* is an association between a *name* and a *value*. A name-value pair could be something like "price: $10", where *price* is the name, and *$10* is the value.

If something has properties, you can store them in an object. For example, a "book" object might have a `title` property, an `author` property, and a `genre` property. In coffeescript, we would code that as: 

```
book = 
  title: "Slaughterhouse Five"
  author: "Kurt Vonnegut"
  genre: "Science Fiction"
```

You can store any kind of data in an object's properties: 

```
book = 
  pages: 256
  genres: ["Science Fiction", "Satire"]
```

You can even store another object inside a property: 

```
book = 
  author: 
    name: "Kurt Vonnegut"
    born: 1922
    died: 2007
```

To access properties in an object, we use dots: 

```
print book.title

# => "Slaugherhouse Five"

print book.pages

# => 256
```

We can keep going with the dots to access objects within objects: 

```
print book.author.born

# => 1922
```

And to access the elements of the array inside the object, we combine the square bracket and the dot syntax:

```
print book.genres[1]

# => "Satire"
```

### Methods

Since we can store any kind of data in an object's properties, we can also store functions as properties. When a function is the property of an object, it is called a *method*. 

```
book = 
  title: "Slaugherhouse Five"
  read: ->
    print "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptate vel, praesentium nobis, asperiores, ea quidem ex suscipit id odio, culpa aut consequatur commodi sit quia. Quia, sed perspiciatis nisi."
```

The `read` property is a method that belongs to our `book` object. We can call it like we would any function: 

```
book.read()

# => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia delectus est molestias labore, provident odio quos mollitia, et totam asperiores possimus quaerat eum esse aperiam aut consequuntur cum enim dolorem."
```

This is how the `.length` method and the `toUpperCase` method work. They are methods that belong to all string objects. 

### Configuration objects

In framer.js, one of the most common uses of objects  will be to configure animations and elements: 

``` 
box = 
  width: 120
  height: 120
  x: 0
  y: 0

animation = 
  duration: 300
  easing: "ease-in"
```

# Simple Animations

Let's open up Framer Studio and try to create some simple animations. 

We're going to work with a green square for a while. 

To create a new element on the screen, we use `new Layer`. This is a special kind of function that creates an object. If we assign a variable to the result of `new Layer`, we can maintain a reference to the element that we can manipulate. 

```
square = new Layer()
```

You should see a blue square on the screen. 

![screenshot1](https://s3.amazonaws.com/f.cl.ly/items/3E20192V03310u1O1x20/Screen%20Shot%202015-03-16%20at%2010.52.28%20PM.png)

To customize the square so it's not just a blue square, we can pass one argument to `new Layer()`. This argument is a configuration object, you can configure the element using properties for various attributes such as width, height, position, and appearance. 

```
square = new Layer(
  width: 200
  height: 200
  x: 100
  y: 100
)
```

![screenshot2](https://s3.amazonaws.com/f.cl.ly/items/0e3f2F3F1f1s0r0V0y30/Screen%20Shot%202015-03-16%20at%2010.59.40%20PM.png)

To make that code a bit easier to read, we can get rid of the parentheses. 

```
square = new Layer
  width: 200
  height: 200
```

There are a lot of cases in coffeescript where we can do this, it can sometimes make the code look a bit cleaner. 