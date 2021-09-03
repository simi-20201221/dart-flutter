typedef Greet = String Function(String);

String sayWelcome(String name) => 'Welcome $name';


void main(List<String> arguments) {
  sayHi();
  final person = describe(name: 'Dart', age: 5);
  print(person);

  print(sum([]));
  print(sum([1, 2]));
  print(sum([1, 2, 4]));

  foo(1, 4);

  final sayHello = (String name) => 'Hello, $name';
  print(sayHello('Dart'));
  welcome(sayHello, 'Dart');

  sayWelcome('Dart');

  // Closures
  const multiplier = 10;
  const list = [1, 4, 2];

  final result = list.map((x) => x * multiplier);
  print(result);
}

void sayHi() {
  print('Dart');
  print('Language');
}

String describe({required String name, required int age}) {
  return "My name is $name. I'm $age years old";
}

double sum(List<double> values) {
  var sum = 0.0;
  values.forEach((value) => sum += value);

  return sum;
}

void foo(int a, [int b = 2]) {
  print('a: $a, b: $b');
}

void welcome(String Function(String) great, String name) {
    print(great(name));
    print('Welcome to Dart Language');
}
