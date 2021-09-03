import 'package:dart_object_oriented_programming/shape.dart';

class Square implements Shape {
  Square({
    required this.side,
  });

  final double side;

  @override
  double get area => side * side;
}
