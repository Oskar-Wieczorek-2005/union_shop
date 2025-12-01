import 'package:flutter/material.dart';
import 'main.dart';

class PrintShackPage extends StatefulWidget {
  const PrintShackPage({Key? key}) : super(key: key);

  @override
  PrintShackPageState createState() => PrintShackPageState();
}

class PrintShackPageState extends State<PrintShackPage> {
  String? _selectedOption;

  static const List<String> _options = [
    '1 line',
    '2 lines',
    '3 lines',
    '4 lines',
    'other_1',
    'other_2',
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
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Image.network(
                    'https://via.placeholder.com/600x200',
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
                    value: _selectedOption,
                    isExpanded: true,
                    decoration: InputDecoration(
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
                      if (s.startsWith('1'))
                        numBoxes = 1;
                      else if (s.startsWith('2'))
                        numBoxes = 2;
                      else if (s.startsWith('3'))
                        numBoxes = 3;
                      else if (s.startsWith('4'))
                        numBoxes = 4;
                      else
                        numBoxes = 1;
                    }

                    if (numBoxes <= 0) return SizedBox.shrink();

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: List.generate(numBoxes, (i) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Line ${i + 1}',
                              border: OutlineInputBorder(),
                              isDense: true,
                            ),
                          ),
                        );
                      }),
                    );
                  }),
                  const SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextFormField(
                      initialValue: '1',
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Quantity',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      onChanged: (val) {
                        setState(() {
                          _quantity = int.tryParse(val) ?? 0;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 14),
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
