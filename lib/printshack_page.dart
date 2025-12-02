import 'package:flutter/material.dart';
import 'main.dart';
import 'cart_page.dart';

class PrintShackPage extends StatefulWidget {
  const PrintShackPage({Key? key}) : super(key: key);

  @override
  PrintShackPageState createState() => PrintShackPageState();
}

class PrintShackPageState extends State<PrintShackPage> {
  String? _selectedOption;

  static const List<String> _options = [
    '1 Line of Text',
    '2 Lines of Text',
    '3 Lines of Text',
    '4 Lines of Text',
    'Small Logo (Chest) ',
    'Small Logo (Back)',
  ];

  int _quantity = 1;

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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Image.network(
                    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityPostcard2_1024x1024@2x.jpg?v=1752232561',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Personalisation',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    initialValue: _selectedOption,
                    isExpanded: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    ),
                    hint: const Text('Choose an option'),
                    items: _options.map((opt) {
                      return DropdownMenuItem<String>(
                        value: opt,
                        child: Text(opt),
                      );
                    }).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selectedOption = val;
                      });
                    },
                  ),
                  const SizedBox(height: 12),
                  Builder(builder: (context) {
                    int numBoxes = 0;
                    if (_selectedOption != null) {
                      final s = _selectedOption!;
                      if (s.startsWith('1')) {
                        numBoxes = 1;
                      } else if (s.startsWith('2')) {
                        numBoxes = 2;
                      } else if (s.startsWith('3')) {
                        numBoxes = 3;
                      } else if (s.startsWith('4')) {
                        numBoxes = 4;
                      } else {
                        numBoxes = 1;
                      }
                    }

                    if (numBoxes <= 0) return const SizedBox.shrink();

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: List.generate(numBoxes, (i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Line ${i + 1}',
                              border: const OutlineInputBorder(),
                              isDense: true,
                            ),
                          ),
                        );
                      }),
                    );
                  }),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: TextFormField(
                      initialValue: '1',
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Quantity',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      onChanged: (val) {
                        setState(() {
                          final parsed = int.tryParse(val) ?? 1;
                          _quantity = parsed < 1 ? 1 : parsed;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          double unitPrice = 3.0;
                          if (_selectedOption != null) {
                            final s = _selectedOption!;
                            if (s.startsWith('1')) {
                              unitPrice = 3.0;
                            } else if (s.startsWith('2')) {
                              unitPrice = 5.0;
                            } else if (s.startsWith('3')) {
                              unitPrice = 7.0;
                            } else if (s.startsWith('4')) {
                              unitPrice = 10.0;
                            } else if (s.toLowerCase().contains('small logo')) {
                              unitPrice = 4.0;
                            }
                          }

                          final title =
                              'Personalisation - ${_selectedOption ?? 'Default'}';
                          final product = Product(
                            title: title,
                            price: unitPrice,
                            imageUrl: '', // Provide a default or empty value
                            description: '', // Provide a default or empty value
                          );
                          addToCart(product, _quantity);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('Added $_quantity items to the cart'),
                            ),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const CartPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text('Add to cart'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    """£3 for one line of text! £5 for two!

One line of text is 10 characters.

Please ensure all spellings are correct before submitting your purchase as we will print your item with the exact wording you provide. We will not be responsible for any incorrect spellings printed onto your garment. Personalised items do not qualify for refunds.""",
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
