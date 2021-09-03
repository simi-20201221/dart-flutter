import 'package:dart_object_oriented_programming/animal.dart';

class Cow extends Animal {
  Cow({
    required int age,
  }) : super(age: age);
  void moo() => print('Moo');
}
