import 'package:flutter/material.dart';
import 'main.dart';

class PrintShackAboutPage extends StatelessWidget {
  const PrintShackAboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateToHome() {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              onHomeTap: navigateToHome,
              onPlaceholderTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  Text(
                    """Make It Yours at The Union Print Shack
Want to add a personal touch? We’ve got you covered with heat-pressed customisation on all our clothing. Swing by the shop - our team’s always happy to help you pick the right gear and answer any questions.

Uni Gear or Your Gear - We’ll Personalise It
Whether you’re repping your university or putting your own spin on a hoodie you already own, we’ve got you covered. We can personalise official uni-branded clothing and your own items - just bring them in and let’s get creative!

Simple Pricing, No Surprises
Customising your gear won’t break the bank - just £3 for one line of text or a small chest logo, and £5 for two lines or a large back logo. Turnaround time is up to three working days, and we’ll let you know as soon as it’s ready to collect.

Personalisation Terms & Conditions
We will print your clothing exactly as you have provided it to us, whether online or in person. We are not responsible for any spelling errors. Please ensure your chosen text is clearly displayed in either capitals or lowercase. Refunds are not provided for any personalised items.

Ready to Make It Yours?
Pop in or get in touch today - let’s create something uniquely you with our personalisation service - The Union Print Shack!""",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
