# Dart Language - Object Oriented Programming (OOP)
============


## Reference

* TODO


## Book

* TODO


## Course

* TODO


## Content

### (1). Object & Class

* Create Class
  * Declare constructors first and then, add member variables and methods
  * A class where `all` variables are `final`, use a `const` constructor
* Constructor (const and named)
  * `Default` constructor
  * `Named` constructor
  * `Factory` constructor
    * common use case: parsing JSON data
    * Factory constructors can return an instance of a subclass
  * Regular constructors must return an instance of the class itself
  * How constructors are generated
    * If a class does not have any constructors
      * `Dart will generate an implicit one` with no arguments
      * (And because of this, subclasses' constructors do not need to call super())
    * If a class has one or more constructor
      * The implicit one with no arguments `won't be generated`
      * (And subclasses' constructor do not have a super constructor that they can use)
* Member variables and Methods
* Getter and Setter
* `static` keyword
* Access modifier: private


### (2). Enumeration

### (3). Class Hierarchies

* Subclassing (inheritance)
* Super constructor
* Overriding methods
* Base Object class
  * Object is the root of the Dart class hierarchy
* toString
  * very useful for debugging
  * override it to define a string representation of own classes
  * already implemented by Built-in Types (int, String, List, ...)
* == operator
  * The `is` operator checks for the `runtime` type of a variable
  * The variable is `promoted` to the given type `inside the if statement`
  * Use `coariant` to change the type of an argument `when overriding a methods 
* hashCode
  * `Equal` objects should have the `same` hashCode
  * `Non-nullable` objects should have `different` hashCodes
* Equatable package
  * Only use Equatable with `immutable` classes
* Generic with class
  * More reusable code
  * Very common with functional operators (map, where, reduce)
* Copying object with copyWith
  * Often better to create immutable classes with final variable
  * Use to need `copy-behaviour` in `immutable` classes
* cascade operator (..)
  * Used to modify class instance with mutable state

### (4). Relations Between Objects

### (5). Abstraction

* Abstract classes
* Implements and Extends
* Interface
  * Every class has an `implicit` interface

### (6). Encapsulation

### (7). Inheritance

* Composition vs Inheritance
  * Composition <=> `has-a` relationships
  * Inheritance <=> `is-a` relationships

### (8). Polymorphism

### (9). Mixin

* Dart classes can extend `only one class`
* Mixin solve this problem -> add functionality and reuse code in classes
* Mixin is good for defining `behavior` (or `capabilities`)
* Class can `inherit` those behaviors in a more maintainable way
* Mixin lead to `shallow` class hierarchies
* Single inheritance (extends) leads to `deep` class hierarchies (making the code harder to maintain)
* Mixin `can not be instantiated`
* Mixin can not have constructor
* Mixin can lead to `name collisions`

### (10). Extension

* Add functionality to existing classes, `without modifying them`
* Great when extending classes in the Dart/Flutter SDK or Third Party Libraries
* Want an extension to apply to all subclasses of a `specific` class
  * => use a `generic type constraint`
* If omit the base class, Dart will use Object by default
  * => The extension will be valid on `any type` (all classes subclass from Object)
