import 'package:flutter/material.dart';
import 'main.dart'; // for Header, Footer, Product, ProductCard

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
    final isWide = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              onHomeTap: () => _navigateHome(context),
              onPlaceholderTap: _placeholderCallbackForButtons,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'SALE',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Browse items currently in our sale.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: isWide ? 3 : 1,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 32,
                    childAspectRatio: 3 / 4,
                    children: saleItems.map((product) {
                      return ProductCard(
                        title: product.title,
                        price: product.price,
                        imageUrl: product.imageUrl,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/product',
                            arguments: product,
                          );
                        },
                      );
                    }).toList(),
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
