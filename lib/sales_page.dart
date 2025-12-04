import 'package:flutter/material.dart';
import 'main.dart';
import 'models/product_model.dart';

final List<Product> saleItems = [
  portsmouthUniversityShirt,
  portsmouthCap,
  upsKeyring,
  upsMug,
  upsToteBag,
  notebook,
];

double _salePrice(double basePrice) => basePrice * 0.8;

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
                      final discounted = _salePrice(product.price);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ProductCard(
                              title: product.title,
                              price: discounted, // show sale price in card
                              imageUrl: product.imageUrl,
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/product',
                                  arguments: product,
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                '£${discounted.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '£${product.price.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            '20% OFF',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
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
