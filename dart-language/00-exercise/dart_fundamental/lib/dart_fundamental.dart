import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

enum Color {
  red,
  green,
  blue
}

/*
 * The entry point of application.
 */
void main(List<String> arguments) {
  // Prints out the `Hello World` in console.
  print('Hello World');

  // Data Type

  // Boolean
  var isOn;
  print('isOn = $isOn');

  isOn = true;
  print('isOn = $isOn');

  isOn = false;
  print('isOn = $isOn');

  print('isOn is a ${isOn.runtimeType}');

  // Number

  num age = 12;

  int people = 6;

  double height = 12.04;

  int test = int.parse('12.45', onError: (_) => 0);
  print('test = $test');

  int years = 8;
  num dogAge = age * years;
  print('Dog age = $dogAge');

  // String
  String language = 'Dart Language';
  print(language);

  String first = language.substring(0, 4);
  print(first);

  int index = language.indexOf(' ');
  String last = language.substring(index).trim();
  print(last);

  bool isDart = language.contains('Dart');
  print(isDart);

  // List
  List parts = language.split(' ');
  print(parts);
  print('${parts[0]} - ${parts[1]}');

  List temp = [1, 4, 2, 8, 5, 7];
  print(temp.length);

  List things = [];
  things.add(1);
  things.add('Cat');
  things.add(true);
  print(things);

  List<int> lits = [];
  lits.add(1);
  lits.add(4);
  lits.add(1);
  print(lits);

  // Set
  Set<int> sets = {};
  sets.add(1);
  sets.add(4);
  sets.add(1);
  print(sets);

  // Queue

  // Map
  Map person = {
    'dad': 'Nathan',
    'mom': 'Hope',
    'daughter': 'Ruby'
  };
  print(person.keys);
  print(person.values);
  print(person);
  person.putIfAbsent('dad', () => 'Simi');

  // Enum
  print(Color);
  print(Color.values);
  print(Color.green);


  // Nullable types


  // User Input
  stdout.write('What is your name?');
  String name = stdin.readByteSync() as String;
  name.isEmpty ? stderr.write('Name is empty') : stdout.write('Hello $name');


  // Assert
  String username = '';
  assert(username != null || username.isEmpty);

  // Function
  // Basic Function
  // Optional Parameter
  // Named Parameter
  // Function as Object
  // Anonymous Function

  // Error Handling
  // Try On Catch Finally
  // Throw

  // Import
  // Encode - Decode String
  // HTTP request

}
