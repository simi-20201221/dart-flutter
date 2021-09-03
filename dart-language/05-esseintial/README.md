# Dart Language - Essential
============


## Reference

* TODO


## Book

* TODO


## Course

* TODO


## Content

### (1) Annotation

* TODO


### (2) Generic

* TODO


### (3) Exceptions

* Kind of error
  * I/O error: Read or Write file
  * Networking error: Network required
  * Programmer error
* Error
  * Programmer mistake
  * Calling a function with invalid arguments, index out of bounds, ...
  * `Program should terminate immediately (not safe to recover)`
* Exception
  * Failure condition: something `unexpected` happened
  * `Unexpected`: out of control
  * `Handle it (ex: show message to user) and recover`
  * Triggered in debug `and` release mode
  * Use cases: Network request, file I/O, ...
  * Use when something can fail unexpectedly
  * When an exception happens, should always be able to recover
  * Use `throw`, `try`, `catch` makes it `explicit` that are handling exception
  * Use multiple `on/catch` blocks to handle `different` types of exceptions
  * Use `finally` run some code whether or not an exception is thrown
  * Use `rethrow` to
    * handle the exception inside a catch block
    * `propagate` the exception to the calling code
* Assertion
  * Makes it easier to `diagnose` and `fix` programming errors in code
  * Create own assertions
  * Use the stack trace to figure out where thing went wrong
  * `Enabled` in `Debug` mode
  * `Disabled` in `Release` mode
  * Only a `safety net to catch runtime errors early`
* `throw` exception
* `try`, `catch`, `finally`, `rethrow`


### (4) I/O

* TODO


### (5) Concurrency

* Asynchronous programming
  * Fetching data from the network
  * Writing to a database
  * Reading data from file
  * Applications need to be `responsive` while waiting for async operations to complete
    * `Future`, `async` and `await`
      * `await`s for the `Future` to complete and `return a value`
      * Use `await` to wait until a Future completes
      * Use multiple awaits to run Futures in sequence
      * Await is only allowed inside async functions
      * Use `try/catch` to handle exception
      * `async/await + try/catch`: a great way of working with Future
      * future.`then`(...).`catchError`(...).`whenComplete`(...): much better then
      * Future.delayed
        * Use to simulate some real work
      * Future.value
        * want a Future that completes `immediately`
      * Future.error
        * want to return an error
        * useful when writing tests for asynchronous code
      * Future.sync
      * Future.microtask
    * `Stream`, `async*` and `yield` 
      * asynchronous events delivered over time
      * often used in `reactive` applications
      * Create/Add values to a Stream
        * Stream.`fromIterable`
        * Stream `generator` (`async*`, `yield`)
          * use to emit `multiple values` over time inside a function
        * StreamController
      * `Iterable` is `synchronous`, and `Stream` is `asynchronous`
      * Stream Constructor
        * Stream.fromIterable
        * Stream.value
        * Stream.error
        * Stream.empty
        * Stream.fromFuture
        * Stream.periodic
      * Stream Method
        * first
        * forEach
        * map
      * Stream Subscription
        * Single Subscription Stream
        * Multiple - Broadcast Stream


### (6) Regular Expressions

* TODO


### (7) Date Time

* TODO
