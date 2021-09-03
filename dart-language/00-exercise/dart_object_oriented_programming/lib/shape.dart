import 'package:dart_object_oriented_programming/circle.dart';
import 'package:dart_object_oriented_programming/square.dart';

abstract class Shape {
  double get area;

  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];

    switch (type) {
      case 'square':
        final side = json['side'];

        if (side is double) {
          return Square(side: side);
        }

        throw UnsupportedError('Invalid or missing side property');

      case 'circle':
        final radius = json['radius'];

        if (radius is double) {
          return Circle(radius: radius);
        }

        throw UnsupportedError('Invalid or missing radius property');

      default:
        throw UnimplementedError('Shape $type not recognized');
    }
  }
}
