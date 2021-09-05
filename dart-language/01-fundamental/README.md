# Dart Language - Fundamental
============


## Reference

* [Dart Language samples](https://dart.dev/samples)
* [Dart Language tour](https://dart.dev/guides/language/language-tour)
* [Dart cheatsheet codelab](https://dart.dev/codelabs/dart-cheatsheet)
* [Dart language specification](https://dart.dev/guides/language/spec)


## Book

* TODO


## Course

* TODO


## Content

### (0). Important concept

* `Everything` can `place` in a `variable` is an `object`
  * every `object` is an `instance` of a `class`
  * `all` objects `inherit` from the `Object` class.
  * `Null safety`
    * with the exception of `null`.
    * variables can’t contain null unless say they can. 
    * can make a variable `nullable` by putting a question mark (`?`) at the end of its type.
      *  Example, a variable of type `int?` might be an `integer`, or it might be `null`. 
   * If know that an expression `never` evaluates to `null` but Dart disagrees, can add `!` to assert that it isn’t `null` (and to `throw` an `exception` if it is)
   * When want to explicitly say that any type is allowed, use the type `Object?`, or — if must `defer type checking until runtime` — the `special type dynamic`.
* Dart is `strongly typed`
  * but `type annotations` are `optional` because Dart can `infer types`
* Dart supports `generic types`
  * a list of objects of `any type`
* Dart supports `top-level` functions
  * Example, `main()` method
  * as well as functions tied to a class or object (static and instance methods, respectively). 
  * can also create functions within functions (`nested` or `local` functions)
* Dart supports `top-level` variables
  * as well as variables tied to a class or object (static and instance variables)
  * `Instance variables` are sometimes known as `fields` or `properties`.
* Dart `doesn’t have` the keywords `public`, `protected`, and `private`.
  * If an identifier starts with an underscore (`_`), it’s `private` to its library.
  * `Identifiers` can start with a letter or underscore (`_`), followed by any combination of those characters plus digits.
* Dart has both `expressions` (which have runtime values) and `statements` (which don’t).
  * Example, 
    * the `conditional expression` 
      * `condition ? expr1 : expr2`
      * has a value of `expr1` or `expr2`.
    * the `if-else statement`
  * A statement often contains `one or more` expressions, but an expression `can’t` directly contain a statement.
* Dart `tools` can report two kinds of problems: `warnings` and `errors`.
  * `Warnings` are just indications that code `might not work`, but they `don’t prevent` program from `executing`.
  * `Errors` can be either `compile-time` or `run-time`.
    * A `compile-time` error `prevents` the code from `executing` at all
    * A `run-time` error results in an `exception` being raised while the code `executes`
* [Dart Keywords](https://dart.dev/guides/language/language-tour#keywords)
  * Avoid using these words as identifiers.


### (1). Comment

* Single-line comment
  * Begins with `//`
  * Everything between `//` and the end of line is ignored by the Dart compiler
  * ```dart
      void main() {
        // TODO: refactor into an AbstractLlamaGreetingFactory?
        print('Welcome to my Llama farm!');
      }
    ```
* Multi-line comment
  * Begins with `/*` and ends with `*/`
  * Everything between `/*` and `*/` is ignored by the Dart compiler
  * ```dart
      void main() {
        /*
         * This is a lot of work. Consider raising chickens.

           Llama larry = Llama();
           larry.feed();
           larry.exercise();
           larry.clean();
        */
      }
    ```
* Documentation comment
  * Multi-line or single-line comments
  * Begin with `///`
  * Inside a documentation comment, the analyzer `ignores` all text unless it is enclosed in `brackets`.
    * Using brackets, can refer to classes, methods, fields, top-level variables, functions, and parameters. 
    * The names in brackets are resolved in the lexical scope of the documented program element.
  * ```dart
      /// A domesticated South American camelid (Lama glama).
      ///
      /// Andean cultures have used llamas as meat and pack
      /// animals since pre-Hispanic times.
      ///
      /// Just like any other animal, llamas need to eat,
      /// so don't forget to [feed] them some [Food].
      class Llama {
        String? name;

        /// Feeds your llama [food].
        ///
        /// The typical llama eats one bale of hay per week.
        void feed(Food food) {
          // ...
        }

        /// Exercises your llama with an [activity] for
        /// [timeLimit] minutes.
        void exercise(Activity activity, int timeLimit) {
          // ...
        }
      }
    ```
* To parse Dart code and generate HTML documentation
  * [Dart documentation generation tool - dartdoc](https://dart.dev/tools/dartdoc)
  * [Effective Dart: Documentation](https://dart.dev/guides/language/effective-dart/documentation)


### (2). Data Type

#### (1) Built-in types

* Basic type
  * Booleans (bool)
    * [bool](https://api.dart.dev/stable/2.13.4/dart-core/bool-class.html)
    * Only `two` objects have type `bool`: the boolean literals `true` and `false` 
    * The `boolean literals` are `compile-time constants`.
    * Dart’s `type safety`
      * can’t use code like `if (nonbooleanValue)` or `assert (nonbooleanValue)`
      * need to `explicitly check` for values
      * Example
        * ```dart
            // Check for an empty string.
            var fullName = '';
            assert(fullName.isEmpty);

            // Check for zero.
            var hitPoints = 0;
            assert(hitPoints <= 0);

            // Check for null.
            var unicorn;
            assert(unicorn == null);

            // Check for NaN.
            var iMeantToDoThis = 0 / 0;
            assert(iMeantToDoThis.isNaN);
          ```
  * [Numbers](https://dart.dev/guides/language/numbers)
    * Integer number
      * Integers are `numbers without a decimal point`.
      * [int](https://api.dart.dev/stable/2.13.4/dart-core/int-class.html)
      * `no larger` than `64 bits`, `depending on the platform`
        * On native platforms, values can be from -263 to 263 - 1.
        * On the web, values are represented as JavaScript numbers (64-bit floating-point values with no fractional part) and can be from -253 to 253 - 1.
      * `Bitwise` operators (such as `>>`), are defined in the `int` class
      * The `int` type specifies the traditional `bitwise shift` (<<, >>), AND (&), and OR (|) operators
      * Example
        * ```dart
            var x = 1;
            var hex = 0xDEADBEEF;
            var exponent = 8e5;
            
            // 0011 << 1 == 0110
            assert((3 << 1) == 6);
            // 0011 >> 1 == 0001
            assert((3 >> 1) == 1); 
            // 0011 | 0100 == 0111
            assert((3 | 4) == 7);
          ```
    * Floating-point
      * Double is a `number` includes a `decimal`
      * [double](https://api.dart.dev/stable/2.13.4/dart-core/double-class.html)
      * 64-bit (double-precision), as specified by the IEEE 754 standard.
      * `Integer literals` are `automatically converted` to `doubles` when `necessary`
      * Example
        * ```dart
            var y = 1.1;
            var exponents = 1.42e5;

            // Equivalent to double z = 1.0.
            double z = 1; 
          ```
    * [num](https://api.dart.dev/stable/2.13.4/dart-core/num-class.html)
      * Both `int` and `double` are subtypes of `num`
      * The `num` type `includes` 
        * basic operators such as +, -, /, and *, 
        * basic methods abs(), ceil(), and floor(), 
        * among other methods
      * If `num` and `its subtypes` don’t have what looking for, the `dart:math` library might
      * Can `declare` a `variable` as a `num` => the `variable` can `have` both `integer` and `double` values.
      * Example
        * ```dart
            // x can have both int and double values
            num x = 1; 
            x += 2.5;
          ```
    * Turn a `string` into a `number`, or vice versa
      * Example
        * ```dart
            // String -> int            
            var one = int.parse('1');
            assert(one == 1);

            // String -> double
            var onePointOne = double.parse('1.1');
            assert(onePointOne == 1.1);

            // int -> String
            String oneAsString = 1.toString();
            assert(oneAsString == '1');

            // double -> String
            String piAsString = 3.14159.toStringAsFixed(2);
            assert(piAsString == '3.14');
          ```
    * `Literal numbers` are `compile-time constants`
      * Many arithmetic expressions are also compile-time constants, as long as their operands are compile-time constants that evaluate to numbers.
      * Example
        * ```dart
            const msPerSecond = 1000;
            const secondsUntilRetry = 5;
            const msUntilRetry = secondsUntilRetry * msPerSecond;
          ```
  * [Strings](https://api.dart.dev/stable/2.13.4/dart-core/String-class.html)
    * Holds a sequence of `UTF-16` code units.
    * `create` a string
      * Can use either `single` or `double` quotes to `create` a string
      * Can use a `triple` quote with either single or double quotation marks to `create` a `multi-line` string
      * Can use `prefixing` with `r` to `create` a `raw` string
      * Example
        * ```dart
            var s1 = 'Single quotes work well for string literals.';
            var s2 = "Double quotes work just as well.";
            var s3 = 'It\'s easy to escape the string delimiter.';
            var s4 = "It's even easier to use the other delimiter.";

            // Multi-line string
            var s1 = '''
            You can create
            multi-line strings like this one.
            ''';

            var s2 = """This is also a
            multi-line string.""";

            // Raw string
            var s = r'In a raw string, not even \n gets special treatment.';
          ```
    * Can `put` the `value` of an `expression` inside a string by using `${expression}`.
      *  If the `expression` is an `identifier`, can `skip` the `{}`.
      *  To `get` the `string` corresponding to an `object`, Dart `calls` the object’s `toString()` method
      *  The `==` operator tests whether two objects are equivalent. Two strings are equivalent if they contain the same sequence of code units.
      * Example
        * ```dart
            var s = 'string interpolation';

            assert('Dart has $s, which is very handy.' ==
                'Dart has string interpolation, '
                    'which is very handy.');
            assert('That deserves all caps. '
                    '${s.toUpperCase()} is very handy!' ==
                'That deserves all caps. '
                    'STRING INTERPOLATION is very handy!');
          ```
    * Can `concatenate` strings using adjacent string literals or the `+` operator
      * Example
        * ```dart
            var s1 = 'String '
                'concatenation'
                " works even over line breaks.";
            assert(s1 ==
                'String concatenation works even over '
                    'line breaks.');

            var s2 = 'The + operator ' + 'works, as well.';
            assert(s2 == 'The + operator works, as well.');
          ```
    * `Literal strings` are `compile-time constants`
      * As long as any interpolated expression is a compile-time constant that evaluates to null or a numeric, string, or boolean value.
      * Example
        * ```dart
            // These work in a const string.
            const aConstNum = 0;
            const aConstBool = true;
            const aConstString = 'a constant string';

            // These do NOT work in a const string.
            var aNum = 0;
            var aBool = true;
            var aString = 'a string';
            const aConstList = [1, 2, 3];

            const validConstString = '$aConstNum $aConstBool $aConstString';
            // const invalidConstString = '$aNum $aBool $aString $aConstList';
          ```
    * Unicode
      * Unicode defines a unique numeric value for each letter, digit, and symbol used in all of the world’s writing systems.
      * Because a Dart string is a sequence of UTF-16 code units, expressing Unicode code points within a string requires special syntax. 
      * The usual way to express a `Unicode` code point is `\uXXXX`, where `XXXX` is a `4-digit hexadecimal` value.
      * Example
        * the heart character (`♥`) is `\u2665`
        * the laughing emoji (`😆`) is `\u{1f606}`
      * Writing systems
        * [Runes](https://api.dart.dev/stable/2.13.4/dart-core/Runes-class.html)
          * `runes` 
          * expose the `Unicode` code points of a `string`
        * [Unicode (extended) grapheme clusters](https://unicode.org/reports/tr29/#Grapheme_Cluster_Boundaries)
          * [characters](https://pub.dev/packages/characters)
          * to view or manipulate user-perceived characters
          * to read or write individual Unicode characters
          * Example
            * ```dart
                import 'package:characters/characters.dart';
                ...
                var hi = 'Hi 🇩🇰';
                print(hi);
                print('The end of the string: ${hi.substring(hi.length - 1)}');
                print('The last character: ${hi.characters.last}\n');
              ```
  * [Symbol](https://api.dart.dev/stable/2.13.4/dart-core/Symbol-class.html)
    * A `Symbol` object `represents` an `operator` or `identifier` declared in a Dart program
    * To get the symbol for an identifier, use a `symbol literal`, which is just `#` `followed` by the `identifier`
    * `Symbol literals` are `compile-time` constants.
  * The value `null` ([Null](https://api.dart.dev/stable/2.13.4/dart-core/Null-class.html))


#### (2) Other types

* `Object`
  * The superclass of all Dart classes except `Null`.
* `Future` and `Stream`
  * Used in `asynchronous` support.
* `Iterable`
  * Used in `for-in loops` and in synchronous `generator functions`.
* `Never`
  * Indicates that an expression can never successfully finish evaluating. 
  * Most often used for functions that always throw an exception.
* `dynamic`
  * Indicates that you want to disable static checking. 
  * Usually you should use `Object` or `Object?` instead.
* `void`
  * Indicates that a value is never used. 
  * Often used as a return type.


#### (3) Null safety.

* TODO: 
  * https://dart.dev/null-safety
  * https://dart.dev/null-safety/understanding-null-safety


#### (4) Type system

* TODO: https://dart.dev/guides/language/type-system


### (2). Operator

* Arithmetic operators
  * | Operator | Meaning |
    | --- | --- |
    | `+` | Add |
    | `–` | Subtract |
    | `-expr` |	Unary minus, also known as negation (reverse the sign of the expression) |
    | `*` |	Multiply |
    | `/` |	Divide |
    | `~/` | Divide, returning an integer result |
    | `%` | Get the remainder of an integer division (modulo) |
  * ```dart
      assert(2 + 3 == 5);
      assert(2 - 3 == -1);
      assert(2 * 3 == 6);
      assert(5 / 2 == 2.5); // Result is a double
      assert(5 ~/ 2 == 2); // Result is an int
      assert(5 % 2 == 1); // Remainder

      assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
    ```
* Prefix and postfix increment and decrement operators
  * | Operator | Meaning |
    | --- | --- |
    | `++var` | `var = var + 1 `(expression value is `var + 1`) |
    | `var++` | `var = var + 1` (expression value is `var`) |
    | `--var` |	`var = var – 1` (expression value is `var – 1`) |
    | `var--` |	`var = var – 1` (expression value is `var`) |
  * ```dart
      int a;
      int b;

      a = 0;
      // Increment a before b gets its value.
      = ++a;
      // 1 == 1
      assert(a == b); 

      a = 0;
      // Increment a AFTER b gets its value.
      b = a++;
      // 1 != 0
      assert(a != b); 

      a = 0;
      // Decrement a before b gets its value.
      b = --a; 
      // -1 == -1
      assert(a == b); 

      a = 0;
      // Decrement a AFTER b gets its value.
      b = a--; 
      // -1 != 0
      assert(a != b); 
    ```
* Equality and relational operators
  * | Operator | Meaning |
    | --- | --- |
    | `==` | Equal |
    | `!=` | Not equal |
    | `>` |	Greater than |
    | `>=` | Greater than or equal to |
    | `<` |	Less than |
    | `<=` | Less than or equal to |
  * The == operator works
    * If `x` or `y` is null, return true if both are null, and false if only one is null.
    * Return the result of the method invocation `x.==(y)`.
  * In the rare case where need to know whether two objects are the exact same object, use the [identical()](https://api.dart.dev/stable/2.13.4/dart-core/identical.html) function instead.
  * ```dart
      assert(2 == 2);
      assert(2 != 3);
      assert(3 > 2);
      assert(2 < 3);
      assert(3 >= 3);
      assert(2 <= 3);
    ```
* Type test operators
  * | Operator | Meaning |
    | --- | --- |
    | `as` | Typecast (also used to specify library prefixes) |
    | `is` | True if the object has the specified type |
    | `is!` | True if the object doesn’t have the specified type |
  * Handy for checking types at runtime
  * The result of `obj is T` is true if `obj` implements the interface specified by `T`.
  * Use the `as` operator to cast an object to a particular type if and only if are sure that the object is of that type.
    * ```dart
      (employee as Person).firstName = 'Bob';
      ```
  * If aren’t sure that the object is of type `T`, then use `is T` to check the type before using the object
    * ```dart
      if (employee is Person) {
        // Type check
        employee.firstName = 'Bob';
      }
      ```
* Assignment operators
  * | Operator | Meaning |
    | --- | --- |
    | `=` | `a = value`; Assign value |
    | `??=` | `b ??= value`; Assign value to b if b is null; otherwise, b stays the same |
    | `+=` |  |
    | `+=` |  |
    | `-=` |  |
    | `*=` |  |
    | `/=` |  |
    | `~/=` |  |
    | `%=` |  |
    | `<<=` |  |
    | `>>=` |  |
    | `&=` |  |
    | `^=` |  |
    | `|=` |  |
  * ```dart
      // Assign using =
      var a = 2; 
      // Assign and multiply: a = a * 3
      a *= 3;
      assert(a == 6);
    ```
* Logical operators
  * | Operator | Meaning |
    | --- | --- |
    | `!expr` | inverts the following expression (changes false to true, and vice versa) |
    | `||` | logical OR |
    | `&&` | logical AND |
  * ```dart
      if (!done && (col == 0 || col == 3)) {
        // ...Do something...
      }
    ```
* Bitwise and shift operators
  * | Operator | Meaning |
    | --- | --- |
    | `&` | AND |
    | `|` | OR |
    | `^` | XOR |
    | `~expr` | Unary bitwise complement (0s become 1s; 1s become 0s) |
    | `<<` | Shift left |
    | `>>` | Shift right |
  * ```dart
      final value = 0x22;
      final bitmask = 0x0f;

      // AND
      assert((value & bitmask) == 0x02); 
      // AND NOT
      assert((value & ~bitmask) == 0x20); 
      // OR
      assert((value | bitmask) == 0x2f); 
      // XOR
      assert((value ^ bitmask) == 0x2d); 
      // Shift left
      assert((value << 4) == 0x220); 
      // Shift right
      assert((value >> 4) == 0x02); 
    ```
* Other operators
  * | Operator | Name | Meaning |
    | --- | --- | --- |
    | `()` | Function application | Represents a function call |
    | `[]` | List access | Refers to the value at the specified index in the list |
    | `.` | Member access | Refers to a property of an expression |
    | `?.` | Conditional member access | Like `.`, but the leftmost operand can be null |
* Cascade notation
  * TODO: https://dart.dev/guides/language/language-tour#cascade-notation

### (3). Expression

* Conditional expressions
  * `condition ? expr1 : expr2`
    * If `condition` is true, evaluates `expr1` (and returns its value); otherwise, evaluates and returns the value of `expr2`.
    * ```dart
        // When you need to assign a value based on a boolean expression, consider using ? and :.
        var visibility = isPublic ? 'public' : 'private';
      ```
  * `expr1 ?? expr2`
    * If `expr1` is non-null, returns its value; otherwise, evaluates and returns the value of `expr2`.
    * ```dart
        // If the boolean expression tests for null, consider using ??.
        String playerName(String? name) => name ?? 'Guest';
      ```
  * ```dart
      // Slightly longer version uses ?: operator.
      String playerName(String? name) => name != null ? name : 'Guest';

      // Very long version uses if-else statement.
      String playerName(String? name) {
        if (name != null) {
          return name;
        } else {
          return 'Guest';
        }
      }
    ```

### (4). Statement

* TODO


### (5). Variable

* Variables `store` references.
* Declaration
  * If an object isn’t restricted to a single type, specify the `Object` type (or `dynamic` if necessary).
  * Implicitly
    * `Type Inference`
    * The `style guide recommendation` of using `var`, rather than `type annotations` for `local variables`.
  * Explicitly
    * Declare the `type` that would be `inferred`
    * Example
      * ```dart
          String name = 'Bob';
        ```
* `Default value`
  * `Uninitialized` variables that have a `nullable type` have an `initial` value of `null`.
  * If haven’t opted into `null safety`, then `every variable` has a `nullable` type.
    * Example
      * ```dart
          int? lineCount;
          // Haven’t opted into null safety
          assert(lineCount == null);
        ```
  * If enable `null safety`, then must `initialize` the `values` of `non-nullable` variables before use them.
    * `Don’t` have to `initialize` a `local` variable where it’s `declared`, `but` do `need` to `assign` it a value `before` it’s `used`
    * Example
      * ```dart
          // Enable null safety
          int lineCount;

          if (weLikeToCount) {            
            lineCount = countLines();
          } else {
            lineCount = 0;
          }

          print(lineCount);
        ```
* `Late` variables
  * The `late modifier`, which has `two` use cases:
    * `Declaring` a `non-nullable` variable that’s `initialized after` its `declaration`.
    * Often Dart’s control flow `analysis` can detect when a `non-nullable` variable is set to a `non-null` value `before` it’s `used`, but `sometimes` analysis `fails`. 
      * Two common cases are `top-level` variables and `instance` variables: Dart often can’t determine whether they’re set, so it doesn’t try.
      * If `sure` that a `variable` is set `before` it’s `used`, but Dart `disagrees`, can `fix` the `error` by marking the variable as `late`
      * If `fail` to `initialize` a `late` variable, a `runtime error` occurs when the `variable` is `used`.
      * Example
        * ```dart
            late String description;

            void main() {
              description = 'Feijoada!';
              print(description);
            }
          ```
    * `Lazily initializing` a variable.
      * When `mark` a variable as `late` but `initialize` it at its `declaration`, then the initializer `runs` the `first time` the `variable` is `used`.
      * Handy in a couple of cases
        * The variable might `not be needed`, and initializing it is `costly`.
        * `Initializing` an `instance` variable, and its initializer `needs access` to this.
        * Example
          * ```dart
              // This is the program's only call to _readThermometer().
              // Lazily initialized.
              late String temperature = _readThermometer(); 
            ```
* `final` and `const` keyword
  * If `never` intend to `change` a `variable`
  * A `final` variable can be `set only once`
    * A final `top-level` or `class` variable is `initialized` the `first time` it’s `used`.
    * A final object `cannot` be `modified`, `its fields` can be `changed`
    * Example
      * ```dart
          // Without a type annotation
          final name = 'Bob'; 
          final String nickname = 'Bobby';

          // Can’t change the value of a final variable.
          // Error: a final variable can only be set once.
          // name = 'Alice';

        ```
  * A `const` variable is a `compile-time constant`, 
    * Const variables are `implicitly` final.
    * If the `const` variable is at the `class level`, `mark` it `static const`
    * Where `declare` the variable, set the value to a `compile-time constant` (such as a number or string literal, a const variable, or the result of an arithmetic operation on constant numbers)
    * `Any` variable can have a `constant` value.
      * can use `const` to declaring `constant variables`
      * can use `const` to create `constant values`
      * can use `const` to declare `constructors` that create `constant values`
    * Can `omit` const from the `initializing expression` of a const `declaration`
    * Can `change` the `value` of a `non-final`, `non-const` variable, even if it used to have a `const value`
    * Can `not change` the `value` of a `const variable`
    * Example
      * ```dart
          // Unit of pressure (dynes/cm2)
          const bar = 1000000; 

          // Standard atmosphere
          const double atm = 1.01325 * bar;

          var foo = const [];
          final bar = const [];
          // Equivalent to `const []`
          const baz = []; 

          // Was const []
          foo = [1, 2, 3];

          // Can `not change` the `value` of a `const variable`
          // Error: Constant variables can't be assigned a value.
          // baz = [42];
        ```
    * Can `define constants` that use `type checks and casts` (`is` and `as`), `collection if`, and `spread operators` (`...` and `...?`)
      * Example
        * ```dart
            // Where i is a const Object with an int value...
            const Object i = 3;

            // Use a typecast.
            const list = [i as int];

            // Use is and collection if.
            const map = {if (i is int) i: 'int'};

            // ...and a spread.
            const set = {if (list is List<int>) ...list};
          ```
    * A const `object` and `its fields` `cannot` be `changed`: they’re `immutable`.
  * `Instance` variables can be `final` but `not const`.
* `Static Type`
* `Special type dynamic`


### (6). Block

* TODO


### (7). Control Flow

#### (1) Conditional

* `tenary` operator
* `if`...`else`
  * Example
    * ```dart
      if (year >= 2001) {
        print('21st century');
      } else if (year >= 1901) {
        print('20th century');
      }
      ```
* `switch`...`case`
  * Example
    * ```dart
        var command = 'OPEN';
        switch (command) {
          case 'CLOSED':
            executeClosed();
            break;
          case 'PENDING':
            executePending();
            break;
          case 'APPROVED':
            executeApproved();
            break;
          case 'DENIED':
            executeDenied();
            break;
          case 'OPEN':
            executeOpen();
            break;
          default:
            executeUnknown();
        }
      ```

#### (2) Loop

* `while`
  * Example
    * ```dart
      while (year < 2016) {
        year += 1;
      }
      ```
* `do`...`while`
  * Example
    * ```dart
        do {
          printLine();
        } while (!atEndOfPage());
      ```
* `fori`
  * Example
    * ```dart
      for (int month = 1; month <= 12; month++) {
        print(month);
      }
      ```
* `forin`
  * Example
    * ```dart
      for (var object in flybyObjects) {
        print(object);
      }
      ```


#### (3) Jump

* `break`
  * Example
    * ```dart
        while (true) {
          if (shutDownRequested()) break;
          processIncomingRequests();
        }
      ```
* `continue`
  * Example
    * ```dart
        for (int i = 0; i < candidates.length; i++) {
          var candidate = candidates[i];
          if (candidate.yearsExperience < 5) {
            continue;
          }
          candidate.interview();
        }
      ```


#### (4) Assert

* TODO: https://dart.dev/guides/language/language-tour#assert

### (8). [Function](https://api.dart.dev/stable/2.13.4/dart-core/Function-class.html)

* `Functions` are `objects` and have a type `Function`.
  * Can be `assigned` to `variables` or `passed` as `arguments` to other `functions`.
  * Can `call` an `instance` of a Dart `class` as if it were a `function`.
  * Example
    * ```dart
        bool isNoble(int atomicNumber) {
          return _nobleGases[atomicNumber] != null;
        }
    * ```
* Dart `recommends type annotations` for public APIs, but the function `still works` if  `omit` the `types`
  * Example
    * ```dart
        isNoble(int atomicNumber) {
          return _nobleGases[atomicNumber] != null;
        }
    * ```
* Arrow (`=>`) function
  * Function that contain a `single statement`
  * Useful when passing `anonymous` function as `argument`
  * ```dart
      bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
    ```
* `Anonymous` function
  * An `anonymous` (`lambda` or `closure`) function is a `nameless` function
  * Might `assign` an anonymous function to a `variable` so that
  * An `anonymous` function looks similar to a `named` function — `zero` or `more` parameters, `separated` by commas and optional type annotations, between parentheses.
  * If the function contains only a single expression or return statement, can shorten it using arrow notation.
  * Syntax
    * ```dart
        ([[Type] param1[, …]]) {
          codeBlock;
        };
      ```
  * Example
    * ```dart
        const list = ['apples', 'bananas', 'oranges'];
        list.forEach((item) {
          print('${list.indexOf(item)}: $item');
        });

        list.forEach((item) => print('${list.indexOf(item)}: $item'));
      ```
* Parameter
  * A function can have `any` number of `required positional` parameters. These can be followed either by `named` parameters or by `optional positional` parameters (`but not both`).
  * `Named` parameters
    * Named parameters are `optional` unless they’re specifically marked as required
    * When `defining` a `function`, use `{param1, param2, …}` to `specify named` parameters.
    * When `calling` a `function`, can `specify named` parameters using `paramName: value`.
    * Can annotate with `required` to indicate that the parameter is mandatory — that users `must provide` a `value` for the `parameter`.
    * Example
      * ```dart
          /// Sets the [bold] and [hidden] flags ...
          void enableFlags({bool? bold, bool? hidden}) {...}

          enableFlags(bold: true, hidden: false);

          const Scrollbar({Key? key, required Widget child})
        ```
  * `Optional positional` parameters
    * If a parameter is `optional` but `can’t` be `null`, provide a `default value`
    * `Wrapping` a `set` of function `parameters` in `[]` marks them as `optional positional` parameters
    * Example
      * ```dart
          String say(String from, String msg, [String? device]) {
            var result = '$from says $msg';
            
            if (device != null) {
              result = '$result with a $device';
            }
            
            return result;
          }

          assert(say('Bob', 'Howdy') == 'Bob says Howdy');
          assert(say('Bob', 'Howdy', 'smoke signal') == 'Bob says Howdy with a smoke signal');
        ```
  * `Default` parameter
    * Can use `=` to define `default` values for both `named` and `positional` parameters
    * The `default` values `must` be `compile-time constants`.
    * Can pass `lists` or `maps` as `default` values
    * Example
      * ```dart
          /// Sets the [bold] and [hidden] flags ...
          void enableFlags({bool bold = false, bool hidden = false}) {...}

          // bold will be true; hidden will be false.
          enableFlags(bold: true);

          String say(String from, String msg, [String device = 'carrier pigeon']) {
            var result = '$from says $msg with a $device';
            return result;
          }
          assert(say('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');

          void doStuff({
            List<int> list = const [1, 2, 3],
            Map<String, String> gifts = const {
              'first': 'paper',
              'second': 'cotton',
              'third': 'leather',
          }}) {
            print('list:  $list');
            print('gifts: $gifts');
          }
        ```
* The `main()` function
  * Every app must have a `top-level` main() function, as the `entrypoint` to the app.
  * Returns `void` and has an optional `List<String>` parameter for arguments.
  * Can use the [args](https://pub.dev/packages/args) library to define and parse `command-line arguments`
  * Example
    * ```dart
        // Run the app like this: dart args.dart 1 test
        void main(List<String> arguments) {
          print(arguments);

          assert(arguments.length == 2);
          assert(int.parse(arguments[0]) == 1);
          assert(arguments[1] == 'test');
        }
      ```
* Functions as `first-class objects`
  * can `pass a function` as a `parameter` to `another function`
    * Example
      * ```dart
          void printElement(int element) {
            print(element);
          }

          var list = [1, 2, 3];

          // Pass printElement as a parameter.
          list.forEach(printElement);
        ```
  * can `assign a function` to a `variable`
    * Example
      * ```dart
          var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
          assert(loudify('hello') == '!!! HELLO !!!');
        ```
* `Lexical` scope
  * The `scope` of `variables` is `determined statically`, `simply` by the `layout of the code`.
  * Can `follow the curly braces outwards` to see if a variable is in scope.
  * Example
    * ```dart
        bool topLevel = true;

        void main() {
          var insideMain = true;

          void myFunction() {
            var insideFunction = true;

            void nestedFunction() {
              var insideNestedFunction = true;

              assert(topLevel);
              assert(insideMain);
              assert(insideFunction);
              assert(insideNestedFunction);
            }
          }
        }
      ```
* Lexical `closures`
  * A `closure` is a `function` object that has `access` to `variables` in its `lexical scope`, even when the `function` is used `outside` of its `original scope`.
  * Functions can `close` over `variables` defined in `surrounding` scopes.
  * Example
    * ```dart
        /// Returns a function that adds [addBy] to the
        /// function's argument.
        Function makeAdder(int addBy) {
          return (int i) => addBy + i;
        }

        void main() {
          // Create a function that adds 2.
          var add2 = makeAdder(2);

          // Create a function that adds 4.
          var add4 = makeAdder(4);

          assert(add2(3) == 5);
          assert(add4(3) == 7);
        }
      ```
* Testing functions for equality
  * Testing top-level functions, static methods, and instance methods for equality
  * ```dart
      void foo() {} // A top-level function

      class A {
        static void bar() {} // A static method
        void baz() {} // An instance method
      }

      void main() {
        Function x;

        // Comparing top-level functions.
        x = foo;
        assert(foo == x);

        // Comparing static methods.
        x = A.bar;
        assert(A.bar == x);

        // Comparing instance methods.
        var v = A(); // Instance #1 of A
        var w = A(); // Instance #2 of A
        var y = w;
        x = w.baz;

        // These closures refer to the same instance (#2),
        // so they're equal.
        assert(y.baz == x);

        // These closures refer to different instances,
        // so they're unequal.
        assert(v.baz != w.baz);
      }
    ```
* Return values
  * All functions return a value.
  * If no return value is specified, the statement `return null;` is implicitly appended to the function body.
  * ```dart
      foo() {}

      assert(foo() == null);
    ```
