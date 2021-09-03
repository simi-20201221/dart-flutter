class Person {
  Person({
    required this.name,
    required this.age,
    required this.height,
  });

  final String name;
  final int age;
  final double height;

  void printDescription() {
    print('''
My name is $name.
I'm $age years old.
I'm $height meters tall.
        ''');
  }
}
