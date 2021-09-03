# Dart Language - Fundamental
============


## Reference

* TODO


## Book

* TODO


## Course

* TODO


## Content

### (1). Comment

* TODO


### (2). Data Type

* Built in Type
* Null Safety (Nullable and Non-nullable types)
  * Null Safety is available on Dart 2.9 (June 2020)
  * Compile-time error -> helps to write `safer` programs
  * Null Safety makes more `productive` -> great advantage on bigger programs
  * Dart language can decide at `compile time` if a variable can be `null` or not.
  * Null
    * No value
    * can be very useful
    * sometimes `null` values are un-wanted
  * `Nullable` variables can be `promoted` to `Non-nullable`
    * Can declare a non-nullable variable and initialize it later
  * Assertion operator (`!`);
    * Assign `nullable` value to `non-nullable` variable
    * Runtime error
    * Use if are sure that expression/value won't be null at runtime
  * If-null operator (`??`)
    * Use if have a default (or fallback) value
  *  Use type inference or declare type explicitly
     * Initialize variables when declare
     * Use type inference


### (2). Operator

* TODO


### (3). Expression

* TODO


### (4). Statement

* TODO


### (5). Variable

* TODO


### (6). Block

* TODO


### (7). Control Flow

#### (1) Conditional

#### (2) Loop

#### (3) Jump


### (8). Functions

* `Encapsulate` some code and `reuse` it multiple times
* Essential `building block`
  * build more complex programs
  * make code more reusable
* Help to write more `maintainable` code
  * Change the way a function `behaves` without changing how `call` it
* Function arguments can be `variable`, `expressions` or `literals`
* Function names should be or start with a `verb`
* Argument names should be `nouns`
* Return value
  * void: no value
* Declare and use function (pass arguments, get return values)
* Difference between `Named arguments` and `Positional arguments`
  * Function with Named argument
    * make argument nullable (ex: `{String?. name}`)
    * make argument non-nullable
      * use a default value (ex: `{String name = ''}`)
      * mark them as required (ex `{required String name}` )
* `Default values` and `Required arguments`
  * Use default values when have a `sensible` default value
* Arrow notation (`=>`) to write more concise functions
  * When need a function body with only one statement
* `Lexical scope` and `Inner functions`
* Avoiding global `Mutable state` and `Pure functions`
  * Pure function
    * always produces the `same result` when called with the `same arguments`
    * `does not mutate` any variables `outside its own scope`
* Anonymous functions and Closures
* Function `as first-class object`
  * Assign function to variables
  * Pass functions as arguments to other functions
* Function as arguments
* Function types (and Aliases)
* Function operators (forEach, map, where (filter), reduce), combine them
* Generic
* Exercise
  * Sum of a List of number
    * Write a function called `sum` that takes a list of values as an argument `List<double>`, and returns the sum of all the values
    * Then, call the function multiple times with different input values (example: `[]`, `[1, 2]`, `[1, 2, 4]` and print the result)
