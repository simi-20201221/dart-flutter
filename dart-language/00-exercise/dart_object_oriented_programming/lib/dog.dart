import 'package:dart_object_oriented_programming/animal.dart';

class Dog extends Animal {
  Dog({
    required int age,
  }) : super(age: age);

  void bark() => print('Bark');

  @override
  void sleep() {
    super.sleep();
    print('Dog sleep');
  }
}
