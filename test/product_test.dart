import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/models/product_model.dart';
import 'package:union_shop/cart_page.dart';

void main() {
  // Create a test widget that matches how ProductPage is used in the app
  Widget createTestWidget(Product product) {
    return MaterialApp(
      routes: {
        '/product': (context) => const ProductPage(),
      },
      // Start directly on ProductPage with a Product as arguments
      home: Builder(
        builder: (context) {
          // Push the route with arguments so ModalRoute.of(context) works
          Future.microtask(() {
            Navigator.of(context).pushReplacementNamed(
              '/product',
              arguments: product,
            );
          });
          return const SizedBox.shrink();
        },
      ),
    );
  }

  group('Product Page Tests', () {
    // Use one of the existing products from the model
    final Product testProduct = portsmouthUniversityShirt;

    testWidgets('should display product page with basic elements', (
      tester,
    ) async {
      await tester.pumpWidget(createTestWidget(testProduct));
      await tester.pumpAndSettle();

      // Header icons from shared Header widget
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.person_outline), findsOneWidget);
      expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
      expect(find.byIcon(Icons.menu), findsOneWidget);

      // Product title and price
      expect(find.text(testProduct.title), findsOneWidget);
      expect(
        find.text('£${testProduct.price.toStringAsFixed(2)}'),
        findsOneWidget,
      );

      // Description section title and body
      expect(find.text('Description'), findsOneWidget);
      expect(find.text(testProduct.description), findsOneWidget);
    });

    testWidgets('should display quantity selector and add to cart button',
        (tester) async {
      await tester.pumpWidget(createTestWidget(testProduct));
      await tester.pumpAndSettle();

      // Quantity selector controls
      expect(find.byIcon(Icons.remove), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
      expect(find.text('1'), findsOneWidget);

      // Ensure the "+" icon is actually on-screen before tapping
      await tester.ensureVisible(find.byIcon(Icons.add));
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      expect(find.text('2'), findsOneWidget);

      // ADD TO CART button exists
      expect(find.text('ADD TO CART'), findsOneWidget);
    });

    testWidgets('should display footer', (tester) async {
      await tester.pumpWidget(createTestWidget(testProduct));
      await tester.pumpAndSettle();

      // Footer shows opening hours and copyright text from shared Footer
      expect(find.text('Union Shop'), findsWidgets);
      expect(
        find.text('© 2025 Union Shop. All rights reserved.'),
        findsOneWidget,
      );
      // Basic footer nav labels
      expect(find.text('Home'), findsWidgets);
      expect(find.text('Products'), findsWidgets);
      expect(find.text('About'), findsWidgets);
      expect(find.text('Contact'), findsWidgets);
    });

    testWidgets('tapping ADD TO CART navigates to CartPage', (tester) async {
      await tester.pumpWidget(createTestWidget(testProduct));
      await tester.pumpAndSettle();

      final addToCartButton = find.text('ADD TO CART');
      await tester.ensureVisible(addToCartButton);
      await tester.tap(addToCartButton);
      await tester.pumpAndSettle();

      expect(find.byType(CartPage), findsOneWidget);
    });

    // NEW: ensure product image is rendered for the given imageUrl
    testWidgets('should display product image', (tester) async {
      await tester.pumpWidget(createTestWidget(testProduct));
      await tester.pumpAndSettle();

      // There should be an Image.network using the product image URL
      final imageFinder = find.byWidgetPredicate(
        (w) =>
            w is Image &&
            w.image is NetworkImage &&
            (w.image as NetworkImage).url == testProduct.imageUrl,
      );
      expect(imageFinder, findsOneWidget);
    });

    // NEW: quantity should not decrement below 1
    testWidgets('quantity cannot go below 1', (tester) async {
      await tester.pumpWidget(createTestWidget(testProduct));
      await tester.pumpAndSettle();

      // Initial quantity
      expect(find.text('1'), findsOneWidget);

      // Ensure "-" is visible and tap it
      final minusButton = find.byIcon(Icons.remove);
      await tester.ensureVisible(minusButton);
      await tester.tap(minusButton);
      await tester.pumpAndSettle();

      // Still 1, not 0 or negative
      expect(find.text('1'), findsOneWidget);
    });
  });
}
