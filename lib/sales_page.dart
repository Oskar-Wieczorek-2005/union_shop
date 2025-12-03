import 'package:flutter/material.dart';
import 'main.dart'; // for Header and Footer

const String _upsuImage =
    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282';

final List<Product> saleItems = [
  Product(
      title: 'Portsmouth University Shirt',
      price: 20.00,
      imageUrl: _upsuImage,
      description: 'Comfortable shirt with Portsmouth University logo.'),
  Product(
      title: 'Portsmouth Cap',
      price: 12.00,
      imageUrl: _upsuImage,
      description: 'Adjustable cap with embroidered crest.'),
  Product(
      title: 'Portsmouth City Hoodie',
      price: 30.00,
      imageUrl: _upsuImage,
      description: 'Hoodie featuring city skyline print.'),
  Product(
      title: 'UPS Keyring',
      price: 4.50,
      imageUrl: _upsuImage,
      description: 'Metal keyring with union crest.'),
  Product(
      title: 'UPS Mug',
      price: 8.00,
      imageUrl: _upsuImage,
      description: 'Ceramic mug with university print.'),
  Product(
      title: 'City Poster',
      price: 6.00,
      imageUrl: _upsuImage,
      description: 'Art print of the city landmarks.')
];

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  void _navigateHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void _placeholderCallbackForButtons() {
    // Placeholder for future actions on this page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              onHomeTap: () => _navigateHome(context),
              onPlaceholderTap: _placeholderCallbackForButtons,
            ),
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SALE',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Discover our latest discounts and special offers.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 24),
                  ////
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
