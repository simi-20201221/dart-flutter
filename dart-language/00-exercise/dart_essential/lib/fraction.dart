class Fraction {
  Fraction({
    required this.numerator,
    required this.denominator,
  }) {
    if (denominator == 0) {
      throw IntegerDivisionByZeroException();
    }
  }

  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}
