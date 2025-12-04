import 'product_model.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem(this.product, this.quantity);
}

final List<CartItem> cartItems = [];
