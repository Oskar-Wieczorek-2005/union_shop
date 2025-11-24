import 'package:flutter/material.dart';
import 'main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
                Text('About Us', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(
                  'Text',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const Footer(),
    );
  }
}
