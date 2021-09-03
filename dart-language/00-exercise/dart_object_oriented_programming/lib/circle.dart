import 'dart:math';

import 'package:dart_object_oriented_programming/shape.dart';

class Circle implements Shape {
  Circle({
    required this.radius,
  });

  final double radius;

  @override
  double get area => pi * radius * radius;
}
