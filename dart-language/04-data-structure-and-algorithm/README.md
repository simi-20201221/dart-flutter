# Dart Language - Data Structure and Algorithm
============


## Reference

* TODO


## Book

* TODO


## Course

* TODO


## Content

### (1) Collection

* [Collection](https://dart.dev/guides/libraries/library-tour#collections)
  * [List](https://api.dart.dev/stable/2.13.4/dart-core/List-class.html)
    * `arrays` are `List` objects, so most people just call them `lists`.
    * Dart `list literals`
    * Can `add` a `comma` after the `last item` in a Dart `collection literal`.
      * trailing comma doesn’t affect the collection, 
      * can help prevent copy-paste errors.
    * Lists use `zero-based` indexing, where `0` is the index of the `first` value and `list.length - 1` is the index of the `last` value
    * To create a list that’s a `compile-time constant`, add `const` before the `list literal`
    * Example
      * ```dart
          var numbers = [1, 2, 3];

          var names = [
            'Car',
            'Boat',
            'Plane',
          ];

          assert(numbers.length == 3);
          assert(numbers[1] == 2);

          numbers[1] = 1;
          assert(numbers[1] == 1);

          var constantList = const [1, 2, 3];
          // This line will cause an error.
          // constantList[1] = 1;
        ```
    * The `spread operator` (`...`) and the `null-aware spread operator` (`...?`)
      * can use the `spread operator` (`...`) to `insert all the values` of a list into another list
        * Example
          * ```dart
              var list = [1, 2, 3];
              var list2 = [0, ...list];
              assert(list2.length == 4);
            ```
      * can use the `null-aware spread operator` (`...?`) to `avoid exceptions` (If the expression to the right of the spread operator might be null)
        * Example
          * ```dart
              var list;
              var list2 = [0, ...?list];
              assert(list2.length == 1);
            ```
  * [Set](https://api.dart.dev/stable/2.13.4/dart-core/Set-class.html)
    * A set is an `unordered` collection of `unique` items.
    * `Add` items to an `existing` set using the `add()` or `addAll()` methods.
    * Use `.length` to get the `number of items` in the set.
    * To `create` a `set` that’s a `compile-time` constant, add `const` before the set literal.
    * Example
      * ```dart
          var halogens = {
            'fluorine', 
            'chlorine', 
            'bromine', 
            'iodine', 
            'astatine',
          };

          var names = <String>{};
          // This works, too.
          // Set<String> names = {};
          // Creates a map, not a set.
          // var names = {};

          var elements = <String>{};
          elements.add('fluorine');
          elements.addAll(halogens);

          assert(elements.length == 5);

          final constantSet = const {
            'fluorine',
            'chlorine',
            'bromine',
            'iodine',
            'astatine',
          };
          // This line will cause an error.
          // constantSet.add('helium'); 
        ```
    * Sets support `spread` operators (`...` and `...?`) and `collection if` and `collection for`
  * [Map](https://api.dart.dev/stable/2.13.4/dart-core/Map-class.html)
    * A `map` is an `object` that associates `keys` and `values`
      * Both `keys` and `values` can be `any type` of `object`.
      * `Each key` occurs `only once`, but can use the `same value multiple times`.
    * If look for a `key` that `isn’t` in a `map`, get a `null` in return
    * Use `.length` to get the `number` of `key-value` pairs in the `map`
    * To create a map that’s a `compile-time` constant, add `const` before the `map literal`
    * Maps support `spread` operators (`...` and `...?`) and `collection if` and `collection for`
    * Example
      * ```dart
          var gifts = {
            // Key:    Value
            'first': 'partridge',
            'second': 'turtledoves',
            'fifth': 'golden rings',
          };

          var nobleGases = {
            2: 'helium',
            10: 'neon',
            18: 'argon',
          };

          var gifts = Map<String, String>();
          gifts['first'] = 'partridge';
          gifts['second'] = 'turtledoves';
          gifts['fifth'] = 'golden rings';

          var nobleGases = Map<int, String>();
          nobleGases[2] = 'helium';
          nobleGases[10] = 'neon';
          nobleGases[18] = 'argon';

          var gifts = {'first': 'partridge'};
          // Add a key-value pair
          gifts['fourth'] = 'calling birds';

          var gifts = {'first': 'partridge'};
          assert(gifts['first'] == 'partridge');
        
          var gifts = {'first': 'partridge'};
          assert(gifts['fifth'] == null);

          var gifts = {'first': 'partridge'};
          gifts['fourth'] = 'calling birds';
          assert(gifts.length == 2);

          final constantMap = const {
            2: 'helium',
            10: 'neon',
            18: 'argon',
          };
          // constantMap[2] = 'Helium'; // This line will cause an error.
        ```
  * [Spread Collections](https://github.com/dart-lang/language/blob/master/accepted/2.3/spread-collections/feature-specification.md)
  * [Control Flow Collections](https://github.com/dart-lang/language/blob/master/accepted/2.3/control-flow-collections/feature-specification.md)
    * `Collection If`
      * Example
        * ```dart
            var nav = [
              'Home',
              'Furniture',
              'Plants',
              if (promoActive) 'Outlet',
            ];
          ```
    * `Collection For`
      * Example
        * ```dart
          var listOfInts = [1, 2, 3];
          var listOfStrings = [
            '#0',
            for (var i in listOfInts) '#$i'
          ];
          assert(listOfStrings[1] == '#1');
          ```


### (2) Algorithms
