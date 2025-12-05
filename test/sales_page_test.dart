import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/sales_page.dart';

void main() {
  // Build a minimal app wrapper for testing
  Widget _buildTestApp() {
    return MaterialApp(
      home: const SalesPage(),
      // Only keep needed routes to avoid "/" conflict
      routes: {
        '/product': (context) => const Scaffold(
              body: Center(child: Text('Product details')),
            ),
      },
    );
  }

  testWidgets('SalesPage shows at least one 20% OFF label',
      (WidgetTester tester) async {
    await tester.pumpWidget(_buildTestApp());
    await tester.pumpAndSettle();

    // Check for all Text widgets that contain "20% OFF"
    expect(find.byWidgetPredicate((widget) {
      return widget is Text && widget.data?.contains('20% OFF') == true;
    }), findsWidgets);
  });
}
