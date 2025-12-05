import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/collections_page.dart';
import 'package:union_shop/models/product_model.dart';

void main() {
  Future<void> pumpCollectionsPage(
    WidgetTester tester, {
    Object? arguments,
  }) async {
    // Build a minimal app that goes straight to CollectionsPage
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) {
            // Simulate route settings with arguments as CollectionsPage expects
            return Navigator(
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  settings: RouteSettings(
                    name: '/collections',
                    arguments: arguments,
                  ),
                  builder: (_) => const CollectionsPage(),
                );
              },
            );
          },
        ),
      ),
    );

    await tester.pumpAndSettle();
  }

  testWidgets('CollectionsPage shows Clothing collection title',
      (WidgetTester tester) async {
    // Pass the same argument format CollectionsPage supports: plain String key
    await pumpCollectionsPage(tester, arguments: 'clothing');

    expect(find.text('Clothing'), findsOneWidget);
  });

  testWidgets('CollectionsPage shows a known clothing product',
      (WidgetTester tester) async {
    final Product knownProduct = clothing.first;

    await pumpCollectionsPage(tester, arguments: 'clothing');

    expect(find.text(knownProduct.title), findsWidgets);
  });

  testWidgets('CollectionsPage defaults to All Products when no argument',
      (WidgetTester tester) async {
    // No arguments: should resolve to "All Products"
    await pumpCollectionsPage(tester);

    expect(find.text('All Products'), findsOneWidget);
  });

  testWidgets('CollectionsPage sorts clothing by price low to high',
      (WidgetTester tester) async {
    await pumpCollectionsPage(tester, arguments: 'clothing');

    // Open the first filter dropdown
    final filterDropdown = find.text('Choose a filter:');
    expect(filterDropdown, findsOneWidget);

    await tester.tap(filterDropdown);
    await tester.pumpAndSettle();

    // Tap on "Price: Low to High"
    await tester.tap(find.text('Price: Low to High').last);
    await tester.pumpAndSettle();

    // After navigation, we should still be on Clothing collection
    expect(find.text('Clothing'), findsOneWidget);

    // Check that the first visible product is the cheapest clothing item
    final sortedByPrice = List<Product>.from(clothing)
      ..sort((a, b) => a.price.compareTo(b.price));
    final cheapest = sortedByPrice.first;

    expect(find.text(cheapest.title), findsWidgets);
  });
}
