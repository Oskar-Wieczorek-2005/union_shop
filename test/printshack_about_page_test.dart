import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/printshack_about_page.dart';

void main() {
  testWidgets('PrintShackAboutPage shows main heading text',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: PrintShackAboutPage(),
      ),
    );

    // Check that a key piece of text from the about page is present
    expect(find.textContaining('Make It Yours at The Union Print Shack'),
        findsOneWidget);
  });
}
