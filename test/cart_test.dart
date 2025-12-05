import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/cart_page.dart';
import 'package:union_shop/models/cart_modle.dart';
import 'package:union_shop/models/product_model.dart';

// Use a real product from product_model.dart, so no need for _TestProduct.

Widget _buildTestApp() {
  // Keep it minimal – CartPage is the only thing under test.
  return const MaterialApp(
    home: CartPage(),
  );
}

void main() {
  setUp(() {
    // Ensure cart is empty before each test by clearing the global list
    cartItems.clear();
  });

  testWidgets('shows empty cart message when no items', (tester) async {
    await tester.pumpWidget(_buildTestApp());
    await tester.pump();

    expect(find.text('Your Cart'), findsOneWidget);
    expect(find.text('Your cart is currently empty'), findsOneWidget);
    // No total text when empty
    expect(find.textContaining('Total:'), findsNothing);
  });

  testWidgets('shows item after addToCart and a total line', (tester) async {
    // Use a real product from the catalog
    final product = portsmouthUniversityShirt;
    addToCart(product, 2);

    await tester.pumpWidget(_buildTestApp());
    await tester.pump();

    expect(find.text(product.title), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.textContaining('Total:'), findsOneWidget);
  });

  testWidgets('increment button increases quantity', (tester) async {
    final product = portsmouthUniversityHoodie;
    addToCart(product, 1);

    await tester.pumpWidget(_buildTestApp());
    await tester.pump();

    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('2'), findsOneWidget);
  });

  testWidgets('decrement button decreases quantity and removes at zero',
      (tester) async {
    final product = portsmouthPolo;
    addToCart(product, 2);

    await tester.pumpWidget(_buildTestApp());
    await tester.pump();

    expect(find.text('2'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text(product.title), findsNothing);
    expect(find.text('Your cart is currently empty'), findsOneWidget);
  });

  testWidgets('delete button removes item from cart', (tester) async {
    final product = upsMug;
    addToCart(product, 1);

    await tester.pumpWidget(_buildTestApp());
    await tester.pump();

    expect(find.text(product.title), findsOneWidget);

    await tester.tap(find.byIcon(Icons.delete));
    await tester.pump();

    expect(find.text(product.title), findsNothing);
    expect(find.text('Your cart is currently empty'), findsOneWidget);
  });
}
