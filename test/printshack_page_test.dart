import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/printshack_page.dart';
import 'package:union_shop/cart_page.dart';

void main() {
  Widget makeTestable(Widget child) {
    return MaterialApp(
      routes: {
        '/': (context) => const Scaffold(body: Text('Home')),
        '/cart': (context) => const CartPage(),
      },
      home: child,
    );
  }

  group('PrintShackPage Tests (no image checks, no network needed)', () {
    testWidgets('Page loads essential UI', (WidgetTester tester) async {
      await tester.pumpWidget(makeTestable(const PrintShackPage()));

      // Required visible text
      expect(find.text('Personalisation'), findsOneWidget);
      expect(find.text('Choose an option'), findsOneWidget);
      expect(find.text('Add to cart'), findsOneWidget);

      // Dropdown exists
      expect(find.byType(DropdownButtonFormField<String>), findsOneWidget);

      // Quantity field exists
      expect(find.byType(TextFormField), findsOneWidget);
    });

    testWidgets('Selecting an option shows the correct number of text fields',
        (WidgetTester tester) async {
      await tester.pumpWidget(makeTestable(const PrintShackPage()));

      // OPEN DROPDOWN
      await tester.tap(find.byType(DropdownButtonFormField<String>));
      await tester.pumpAndSettle();

      // TAP '2 Lines of Text'
      await tester.tap(find.text('2 Lines of Text').last);
      await tester.pumpAndSettle();

      // EXPECT EXACTLY 2 TEXTFIELDS (Line 1, Line 2)
      expect(find.widgetWithText(TextField, 'Line 1'), findsOneWidget);
      expect(find.widgetWithText(TextField, 'Line 2'), findsOneWidget);

      // No others
      expect(find.widgetWithText(TextField, 'Line 3'), findsNothing);
    });

    testWidgets('Quantity text field accepts changes',
        (WidgetTester tester) async {
      await tester.pumpWidget(makeTestable(const PrintShackPage()));

      final quantityField = find.byType(TextFormField);
      await tester.enterText(quantityField, '7');
      await tester.pump();

      final fieldWidget = tester.widget<TextFormField>(quantityField);

      // The controller holds the current text, regardless of initialValue
      expect(fieldWidget.controller?.text, '7');
    });

    testWidgets('Add to cart navigates to CartPage and shows SnackBar',
        (WidgetTester tester) async {
      await tester.pumpWidget(makeTestable(const PrintShackPage()));

      // SELECT A VALID OPTION (required for price logic)
      await tester.tap(find.byType(DropdownButtonFormField<String>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('1 Line of Text').last);
      await tester.pumpAndSettle();

      // TAP BUTTON
      await tester.tap(find.text('Add to cart'));
      await tester.pumpAndSettle();

      // CartPage appears
      expect(find.byType(CartPage), findsOneWidget);

      // SnackBar appears
      expect(find.textContaining('Added'), findsOneWidget);
    });
  });
}
