import 'package:flutter/material.dart';
import 'main.dart'; // for Header and Footer

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
