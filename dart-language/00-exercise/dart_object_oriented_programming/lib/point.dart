import 'package:equatable/equatable.dart';

class Point extends Equatable {
  const Point(
    this.x,
    this.y,
  );

  final int x;
  final int y;

  @override
  String toString() => 'Point($x, $y)';

  @override
  bool operator ==(covariant Point object) {
    if (object is Point) {
      return x == object.x && y == object.y;
    }

    return false;
  }

  @override
  bool get stringify => true;

//   @override
//   int get hashCode => super.hashCode;

  @override
  List<Object?> get props => [x, y];

  Point operator +(Point point) => Point(x + point.x, y + point.y);

  Point operator *(int point) => Point(x * point, y * point);
}
