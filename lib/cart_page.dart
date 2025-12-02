import 'package:flutter/material.dart';
import 'main.dart';

final List<Product> cartItems = [];

void addToCart(Product p) {
  cartItems.add(p);
}

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateToHome() {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }

    final bool isCartEmpty = cartItems.isEmpty;

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
                    ...cartItems.map((p) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Card(
                            child: ListTile(
                              title: Text(p.title),
                              subtitle: Text(p.price),
                            ),
                          ),
                        )),
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
