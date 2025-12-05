import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:union_shop/about_page.dart';

void main() {
  testWidgets('AboutPage shows about text', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AboutPage(),
      ),
    );

    expect(
      find.textContaining(
        'We’re dedicated to giving you the very best University branded products',
      ),
      findsOneWidget,
    );
  });
}
