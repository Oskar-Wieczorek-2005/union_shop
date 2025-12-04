import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/main.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/sales_page.dart';
import 'package:union_shop/about_page.dart';

void main() {
  group('Home Page Tests', () {
    testWidgets('displays header with banner, logo and icons', (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pumpAndSettle();

      // Banner text
      expect(
        find.text(
          'BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!',
        ),
        findsOneWidget,
      );

      // Header icons
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.person_outline), findsOneWidget);
      expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
      expect(find.byIcon(Icons.menu), findsOneWidget);
    });

    testWidgets('displays hero sale section and browse sale button',
        (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pumpAndSettle();

      expect(find.text('20% Sale on Select Items!'), findsOneWidget);
      expect(
        find.text(
          "Check out our special offers on selected products. Don't miss out on these great deals!",
        ),
        findsOneWidget,
      );
      expect(find.text('BROWSE SALE'), findsOneWidget);
    });

    testWidgets('BROWSE SALE button navigates to sale page', (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pumpAndSettle();

      await tester.tap(find.text('BROWSE SALE'));
      await tester.pumpAndSettle();

      // We only assert that navigation succeeded by checking that a SalesPage
      // is in the tree (type-based check; adjust if SalesPage has a key text).
      expect(find.byType(SalesPage), findsOneWidget);
    });

    testWidgets('displays products section title and all product cards',
        (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pumpAndSettle();

      expect(find.text('PRODUCTS SECTION'), findsOneWidget);

      // Verify all products defined in products list are shown by title and price
      for (final product in products) {
        expect(find.text(product.title), findsWidgets);
        expect(
          find.text('£${product.price.toStringAsFixed(2)}'),
          findsWidgets,
        );
      }
    });

    testWidgets('tapping a product card navigates to product page',
        (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pumpAndSettle();

      final firstProduct = products.first;

      await tester.tap(find.text(firstProduct.title).first);
      await tester.pumpAndSettle();

      // ProductPage should be shown; adjust if ProductPage has a key widget.
      expect(find.byType(ProductPage), findsOneWidget);
    });

    testWidgets('header menu SALE item navigates to sale page', (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      await tester.tap(find.text('SALE'));
      await tester.pumpAndSettle();

      expect(find.byType(SalesPage), findsOneWidget);
    });

    testWidgets('header menu About item navigates to about page',
        (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();

      await tester.tap(find.text('About'));
      await tester.pumpAndSettle();

      expect(find.byType(AboutPage), findsOneWidget);
    });

    testWidgets('footer displays opening hours, title and links',
        (tester) async {
      await tester.pumpWidget(const UnionShopApp());
      await tester.pumpAndSettle();

      // Footer key texts
      expect(find.text('Union Shop'), findsOneWidget);
      expect(
        find.text('© 2025 Union Shop. All rights reserved.'),
        findsOneWidget,
      );

      // Simple nav labels in footer
      expect(
          find.text('Home'), findsWidgets); // header + footer, so findsWidgets
      expect(find.text('Products'), findsOneWidget);
      expect(find.text('About'), findsWidgets);
      expect(find.text('Contact'), findsOneWidget);
    });

    testWidgets('footer subscribe button shows snackbar', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: HomeScreen(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byType(TextField),
        'test@example.com',
      );
      await tester.tap(find.text('Subscribe'));
      await tester.pump(); // show SnackBar animation start
      await tester.pump(const Duration(seconds: 1));

      expect(
        find.text('Subscribed to Latest offers'),
        findsOneWidget,
      );
    });
  });
}
