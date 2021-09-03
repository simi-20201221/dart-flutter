import 'package:dart_object_oriented_programming/e_commerce/item.dart';
import 'package:dart_object_oriented_programming/e_commerce/product.dart';

class Cart {
  final Map<int, Item> _items = {};

  void addProduct(Product product) {
    final item = _items[product.id];

    item == null
        ? _items[product.id] = Item(product: product, quantity: 1)
        : _items[product.id] = Item(product: product, quantity: item.quantity + 1);
  }

  bool get isEmpty => _items.isEmpty;

  double total() => _items.values
    .map((item) => item.price)
    .reduce((value, element) => value + element);

  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is empty';
    }

    final itemizedList = _items.values
      .map((item) => item.toString())
      .join('\n');

    return '============\n$itemizedList\nTotal: \$${total()}\n============';
  }
}
