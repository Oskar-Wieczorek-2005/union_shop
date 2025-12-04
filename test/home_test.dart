import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Import your app and all pages referenced in tests
import 'package:union_shop/main.dart';
import 'package:union_shop/about_page.dart';
import 'package:union_shop/sales_page.dart';
import 'package:union_shop/login_in_page.dart';
import 'package:union_shop/cart_page.dart';
import 'package:union_shop/collections_page.dart';
import 'package:union_shop/printshack_about_page.dart';
import 'package:union_shop/product_page.dart';

void main() {
  // Helper to build the app
  Widget _createApp() => const UnionShopApp();

  // Helper to open the header menu overlay
  Future<void> _openHeaderMenu(WidgetTester tester) async {
    final menuButton = find.byIcon(Icons.menu);
    await tester.ensureVisible(menuButton);
    await tester.tap(menuButton);
    await tester.pumpAndSettle();
  }

  testWidgets('BROWSE SALE button navigates to sale page', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    final browseSaleButton = find.text('BROWSE SALE');
    await tester.ensureVisible(browseSaleButton);
    await tester.tap(browseSaleButton);
    await tester.pumpAndSettle();

    expect(find.byType(SalesPage), findsOneWidget);
  });

  testWidgets('Footer subscribe button shows snackbar', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    final subscribeButton = find.text('Subscribe');
    await tester.ensureVisible(subscribeButton);
    await tester.tap(subscribeButton);
    await tester.pump(); // show snackbar

    expect(find.text('Subscribed to Latest offers'), findsOneWidget);
  });

  testWidgets('Header menu About item navigates to about page', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    await _openHeaderMenu(tester);

    final aboutItem = find.text('About');
    await tester.ensureVisible(aboutItem);
    await tester.tap(aboutItem);
    await tester.pumpAndSettle();

    expect(find.byType(AboutPage), findsOneWidget);
  });

  testWidgets('Header login icon navigates to login page', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    final loginIcon = find.byIcon(Icons.person_outline);
    await tester.ensureVisible(loginIcon);
    await tester.tap(loginIcon);
    await tester.pumpAndSettle();

    expect(find.byType(LoginInPage), findsOneWidget);
  });

  testWidgets('Header cart icon navigates to cart page', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    final cartIcon = find.byIcon(Icons.shopping_bag_outlined);
    await tester.ensureVisible(cartIcon);
    await tester.tap(cartIcon);
    await tester.pumpAndSettle();

    expect(find.byType(CartPage), findsOneWidget);
  });

  testWidgets('Product card navigates to product page', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    final firstProduct = find.text(products.first.title);
    await tester.ensureVisible(firstProduct);
    await tester.tap(firstProduct);
    await tester.pumpAndSettle();

    expect(find.byType(ProductPage), findsOneWidget);
  });

  testWidgets('Collections submenu navigates to correct collection',
      (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    await _openHeaderMenu(tester);

    final shopItem = find.text('Shop');
    await tester.ensureVisible(shopItem);
    await tester.tap(shopItem);
    await tester.pumpAndSettle();

    final clothingItem = find.text('Clothing');
    await tester.ensureVisible(clothingItem);
    await tester.tap(clothingItem);
    await tester.pumpAndSettle();

    expect(find.byType(CollectionsPage), findsOneWidget);
  });

  testWidgets('Print Shack submenu navigates correctly', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    await _openHeaderMenu(tester);

    final printShackItem = find.text('The Print Shack');
    await tester.ensureVisible(printShackItem);
    await tester.tap(printShackItem);
    await tester.pumpAndSettle();

    final aboutPS = find.text('About');
    await tester.ensureVisible(aboutPS);
    await tester.tap(aboutPS);
    await tester.pumpAndSettle();

    expect(find.byType(PrintShackAboutPage), findsOneWidget);
  });

  testWidgets('Header SALE navigates to sales page', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    await _openHeaderMenu(tester);

    final saleItem = find.text('SALE');
    await tester.ensureVisible(saleItem);
    await tester.tap(saleItem);
    await tester.pumpAndSettle();

    expect(find.byType(SalesPage), findsOneWidget);
  });

  testWidgets('Header and hero section render correctly', (tester) async {
    await tester.pumpWidget(_createApp());
    await tester.pumpAndSettle();

    // Header icons
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.person_outline), findsOneWidget);
    expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsOneWidget);

    // Hero sale text
    expect(find.text('20% Sale on Select Items!'), findsOneWidget);
    expect(
      find.textContaining("special offers on selected products"),
      findsOneWidget,
    );
  });
}
