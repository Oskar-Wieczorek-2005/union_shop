import 'package:flutter/material.dart';
import 'main.dart';

class CartItem {
  final Product product;
  int quantity;
  CartItem(this.product, this.quantity);
}

final List<CartItem> cartItems = [];

void addToCart(Product p, int qty) {
  final existing = cartItems.indexWhere((c) => c.product.title == p.title);
  if (existing >= 0) {
    cartItems[existing].quantity += qty;
  } else {
    cartItems.add(CartItem(p, qty));
  }
}

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateToHome() {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }

    final bool isCartEmpty = cartItems.isEmpty;

    double cartTotal() {
      return cartItems.fold(
          0.0, (sum, c) => sum + (c.product.price * c.quantity.toDouble()));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              onHomeTap: navigateToHome,
              onPlaceholderTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
              child: Center(
                child: Text(
                  'Your Cart',
                ),
              ),
            ),
            if (isCartEmpty)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child: Text(
                    'Your cart is currently empty',
                  ),
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    ...cartItems.map((c) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Card(
                            child: ListTile(
                              title: Text(c.product.title),
                              subtitle: Text(
                                  '${c.quantity} × £${c.product.price.toStringAsFixed(2)}'),
                              trailing: Text(
                                  '£${(c.product.price * c.quantity).toStringAsFixed(2)}'),
                            ),
                          ),
                        )),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Total: £${cartTotal().toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
