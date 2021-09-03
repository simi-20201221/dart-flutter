import 'dog.dart';

class CleverDog extends Dog {
  CleverDog({
    required int age,
  }) : super(age: age);

  void catchBall() => print('Catch');
}
