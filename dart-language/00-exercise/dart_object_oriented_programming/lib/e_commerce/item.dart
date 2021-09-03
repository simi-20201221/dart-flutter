import 'package:dart_object_oriented_programming/e_commerce/product.dart';

class Item {
  const Item({
    required this.product,
    required this.quantity,
  });

  final Product product;
  final int quantity;

  double get price => quantity * product.price;

  @override
  String toString() => '$quantity x ${product.name}: \$';
}
