class PositiveInt {
  const PositiveInt({
    required this.value,
  }) : assert(value >= 0, 'Value can not be negative');

  final int value;
}
