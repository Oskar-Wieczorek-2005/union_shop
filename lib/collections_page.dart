import 'package:flutter/material.dart';
import 'main.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(
            onHomeTap: () =>
                Navigator.pushNamedAndRemoveUntil(context, '/', (r) => false),
            onPlaceholderTap: () {},
          ),
          const SizedBox(height: 24),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Title', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
