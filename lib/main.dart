import 'package:flutter/material.dart';
import 'product_page.dart';
import 'about_page.dart';
import 'login_in_page.dart';
import 'printshack_about_page.dart';
import 'printshack_page.dart';
import 'cart_page.dart';

void main() {
  runApp(const UnionShopApp());
}

class Product {
  final String title;
  final double price;
  final String imageUrl;
  final String description;

  Product({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

// Hard coded products list
final List<Product> products = [
  Product(
    title: 'Lanyard',
    price: 10.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    description: 'High-quality lanyard, perfect for keys or ID cards.',
  ),
  Product(
    title: 'I Heart Portsmouth Mug',
    price: 15.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    description: 'Ceramic mug celebrating Portsmouth.',
  ),
  Product(
    title: 'Portsmouth University Shirt',
    price: 20.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    description: 'Comfortable shirt with Portsmouth University logo.',
  ),
  Product(
    title: 'Portsmouth University Hoodie',
    price: 25.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
    description: 'Warm hoodie with Portsmouth University branding.',
  ),
];

const String _upsuImage =
    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282';

final List<Product> clothing = [
  Product(
      title: 'Portsmouth University Shirt',
      price: 20.00,
      imageUrl: _upsuImage,
      description: 'Comfortable shirt with Portsmouth University logo.'),
  Product(
      title: 'Portsmouth University Hoodie',
      price: 25.00,
      imageUrl: _upsuImage,
      description: 'Warm hoodie with Portsmouth University branding.'),
  Product(
      title: 'Portsmouth Polo',
      price: 22.00,
      imageUrl: _upsuImage,
      description: 'Smart polo for everyday wear.'),
  Product(
      title: 'Portsmouth Lightweight Jacket',
      price: 35.00,
      imageUrl: _upsuImage,
      description: 'Windproof lightweight jacket with logo.'),
  Product(
      title: 'Portsmouth Cap',
      price: 12.00,
      imageUrl: _upsuImage,
      description: 'Adjustable cap with embroidered crest.'),
  Product(
      title: 'Portsmouth Sports Tank',
      price: 18.00,
      imageUrl: _upsuImage,
      description: 'Breathable tank top for sports and gym.'),
];

final List<Product> merchandise = [
  Product(
      title: 'UPS Keyring',
      price: 4.50,
      imageUrl: _upsuImage,
      description: 'Metal keyring with union crest.'),
  Product(
      title: 'UPS Mug',
      price: 8.00,
      imageUrl: _upsuImage,
      description: 'Ceramic mug with university print.'),
  Product(
      title: 'UPS Tote Bag',
      price: 6.00,
      imageUrl: _upsuImage,
      description: 'Reusable cotton tote bag.'),
  Product(
      title: 'Sticker Pack',
      price: 3.00,
      imageUrl: _upsuImage,
      description: 'Pack of assorted union stickers.'),
  Product(
      title: 'Notebook',
      price: 5.00,
      imageUrl: _upsuImage,
      description: 'A5 lined notebook with logo.'),
  Product(
      title: 'Pen Set',
      price: 2.50,
      imageUrl: _upsuImage,
      description: 'Pack of branded ballpoint pens.'),
];

final List<Product> halloween = [
  Product(
      title: 'Spooky Tee',
      price: 16.00,
      imageUrl: _upsuImage,
      description: 'Halloween themed tee with glow print.'),
  Product(
      title: 'Pumpkin Mug',
      price: 9.00,
      imageUrl: _upsuImage,
      description: 'Festive mug with pumpkin design.'),
  Product(
      title: 'Halloween Mask',
      price: 7.00,
      imageUrl: _upsuImage,
      description: 'Comfortable costume mask.'),
  Product(
      title: 'Haunted Hoodie',
      price: 28.00,
      imageUrl: _upsuImage,
      description: 'Cozy hoodie with Halloween print.'),
  Product(
      title: 'Glow Socks',
      price: 5.50,
      imageUrl: _upsuImage,
      description: 'Socks that glow under UV light.'),
  Product(
      title: 'Trick-or-Treat Tote',
      price: 4.00,
      imageUrl: _upsuImage,
      description: 'Small tote ideal for collecting sweets.'),
];

final List<Product> signutureEssentialRange = [
  Product(
      title: 'Signature Essential Tee',
      price: 15.00,
      imageUrl: _upsuImage,
      description: 'Soft cotton tee, wardrobe staple.'),
  Product(
      title: 'Signature Crewneck',
      price: 24.00,
      imageUrl: _upsuImage,
      description: 'Classic crewneck in neutral tones.'),
  Product(
      title: 'Signature Leggings',
      price: 20.00,
      imageUrl: _upsuImage,
      description: 'Comfort stretch leggings.'),
  Product(
      title: 'Signature Tote',
      price: 7.00,
      imageUrl: _upsuImage,
      description: 'Durable tote for daily use.'),
  Product(
      title: 'Signature Cap',
      price: 10.00,
      imageUrl: _upsuImage,
      description: 'Minimalist cap with small logo.'),
  Product(
      title: 'Signature Socks',
      price: 4.00,
      imageUrl: _upsuImage,
      description: 'Comfort-fit ankle socks.'),
];

final List<Product> portsmouthCityCollection = [
  Product(
      title: 'Portsmouth City Tee',
      price: 18.00,
      imageUrl: _upsuImage,
      description: 'City themed tee celebrating Portsmouth.'),
  Product(
      title: 'Portsmouth City Scarf',
      price: 12.00,
      imageUrl: _upsuImage,
      description: 'Woven scarf with city colours.'),
  Product(
      title: 'City Crest Pin',
      price: 3.50,
      imageUrl: _upsuImage,
      description: 'Enamel pin of the city crest.'),
  Product(
      title: 'Portsmouth City Hoodie',
      price: 30.00,
      imageUrl: _upsuImage,
      description: 'Hoodie featuring city skyline print.'),
  Product(
      title: 'City Poster',
      price: 6.00,
      imageUrl: _upsuImage,
      description: 'Art print of the city landmarks.'),
  Product(
      title: 'City Cap',
      price: 11.00,
      imageUrl: _upsuImage,
      description: 'Classic cap with city embroidery.'),
];

final List<Product> prideCollection = [
  Product(
      title: 'Pride Tee',
      price: 17.00,
      imageUrl: _upsuImage,
      description: 'Rainbow tee supporting Pride events.'),
  Product(
      title: 'Pride Flag',
      price: 9.00,
      imageUrl: _upsuImage,
      description: 'Small handheld pride flag.'),
  Product(
      title: 'Pride Wristband',
      price: 2.50,
      imageUrl: _upsuImage,
      description: 'Silicone wristband with rainbow colours.'),
  Product(
      title: 'Pride Hoodie',
      price: 29.00,
      imageUrl: _upsuImage,
      description: 'Comfy hoodie with subtle pride accent.'),
  Product(
      title: 'Pride Tote',
      price: 7.50,
      imageUrl: _upsuImage,
      description: 'Canvas tote with pride artwork.'),
  Product(
      title: 'Pride Pin Set',
      price: 4.00,
      imageUrl: _upsuImage,
      description: 'Set of enamel pins with pride motifs.'),
];

final List<Product> graduation = [
  Product(
      title: 'Graduation Gown Hire',
      price: 45.00,
      imageUrl: _upsuImage,
      description: 'Rent a gown for graduation ceremonies.'),
  Product(
      title: 'Graduation Sash',
      price: 12.00,
      imageUrl: _upsuImage,
      description: 'Customisable sash for graduating students.'),
  Product(
      title: 'Class of 2025 Tee',
      price: 14.00,
      imageUrl: _upsuImage,
      description: 'Commemorative tee for graduates.'),
  Product(
      title: 'Graduation Mug',
      price: 8.50,
      imageUrl: _upsuImage,
      description: 'Mug celebrating graduation year.'),
  Product(
      title: 'Graduation Keyring',
      price: 3.00,
      imageUrl: _upsuImage,
      description: 'Keepsake keyring for graduates.'),
  Product(
      title: 'Tassel & Charm',
      price: 5.00,
      imageUrl: _upsuImage,
      description: 'Tassel and charm set for graduation caps.'),
];

class UnionShopApp extends StatelessWidget {
  const UnionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Union Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4d2963)),
      ),
      home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/product': (context) => const ProductPage(),
        '/printshack': (context) =>
            const PrintShackAboutPage(), // PrintShack about page
        '/printshack_personalisation': (context) =>
            const PrintShackPage(), // personalisation page
        '/about': (context) => const AboutPage(),
        '/login': (context) => const LoginInPage(), // added route
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void placeholderCallbackForButtons() {
    // This is the event handler for buttons that don't work yet
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header (refactored into reusable widget)
            Header(
              onHomeTap: () => navigateToHome(context),
              onPlaceholderTap: placeholderCallbackForButtons,
            ),

            // Hero Section
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityPostcard2_1024x1024@2x.jpg?v=1752232561',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Content overlay
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Placeholder Hero Title',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "This is placeholder text for the hero section.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: placeholderCallbackForButtons,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4d2963),
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text(
                            'BROWSE PRODUCTS',
                            style: TextStyle(fontSize: 14, letterSpacing: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Products Section
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'PRODUCTS SECTION',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 48,
                      children: products
                          .map(
                            (product) => ProductCard(
                              title: product.title,
                              price: product.price,
                              imageUrl: product.imageUrl,
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/product',
                                  arguments: product,
                                );
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),

            const Footer(),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String imageUrl;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.image_not_supported, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                title,
                style: const TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 2,
              ),
              const SizedBox(height: 4),
              Text(
                '£${price.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Reusable Header Widget
class Header extends StatefulWidget {
  final VoidCallback onHomeTap;
  final VoidCallback onPlaceholderTap;

  const Header({
    super.key,
    required this.onHomeTap,
    required this.onPlaceholderTap,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final GlobalKey _menuKey = GlobalKey();

  double _menuTop() {
    final BuildContext keyContext = _menuKey.currentContext!;
    final RenderBox box = keyContext.findRenderObject() as RenderBox;
    final Offset position = box.localToGlobal(Offset.zero);
    return position.dy + box.size.height;
  }

  OverlayEntry _showMenu(List<MapEntry<String, VoidCallback>> items) {
    final overlay = Overlay.of(context);
    late OverlayEntry entry;
    final top = _menuTop();

    entry = OverlayEntry(
      builder: (_) => Positioned(
        top: top,
        left: 0,
        right: 0,
        child: Material(
          color: Colors.transparent,
          child: Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => entry.remove(),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Material(
                  elevation: 4,
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: items
                        .map(
                          (me) => ListTile(
                            title: Text(me.key),
                            onTap: () {
                              entry.remove();
                              Future.microtask(me.value);
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    overlay.insert(entry);
    return entry;
  }

  void _showPrimaryMenu() {
    _showMenu([
      MapEntry('Home', () => widget.onHomeTap()),
      MapEntry(
        'Shop',
        () => _showMenu([
          MapEntry('Clothing', () {/* placeholder */}),
          MapEntry('Merchendice', () {/* placeholder */}),
          MapEntry('Halloween', () {/* placeholder */}),
          MapEntry('Signiture & Essential Range', () {/* placeholder */}),
          MapEntry('Portsmouth City Colection', () {/* placeholder */}),
          MapEntry('Pr*de Collection', () {/* placeholder */}),
          MapEntry('Graduation', () {/* placeholder */}),
        ]),
      ),
      MapEntry(
        'The Print Shack',
        () => _showMenu([
          MapEntry(
            'About',
            () => Navigator.pushNamed(context, '/printshack'),
          ),
          MapEntry(
            'Personalisation',
            () => Navigator.pushNamed(context, '/printshack_personalisation'),
          ),
        ]),
      ),
      MapEntry('SALE', () => widget.onPlaceholderTap()),
      MapEntry('About', () => Navigator.pushNamed(context, '/about')),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          // Top banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            color: const Color(0xFF4d2963),
            child: const Text(
              'BIG SALE! OUR ESSENTIAL RANGE HAS DROPPED IN PRICE! OVER 20% OFF! COME GRAB YOURS WHILE STOCK LASTS!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          // Main header
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: widget.onHomeTap,
                    child: Image.network(
                      'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                      height: 18,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          width: 18,
                          height: 18,
                          child: const Center(
                            child: Icon(Icons.image_not_supported,
                                color: Colors.grey),
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.search,
                            size: 18,
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          onPressed: widget.onPlaceholderTap,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.person_outline,
                            size: 18,
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/login'),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                            size: 18,
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const CartPage()),
                            );
                          },
                        ),
                        IconButton(
                          key: _menuKey,
                          icon: const Icon(
                            Icons.menu,
                            size: 18,
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          onPressed: _showPrimaryMenu,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Reusable Footer Widget
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF4d2963),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            """Opening Hours

❄️ Winter Break Closure Dates ❄️
Closing 4pm 19/12/2025
Reopening 10am 05/01/2026
Last post date: 12pm on 18/12/2025
------------------------
(Term Time)
Monday - Friday 10am - 4pm
(Outside of Term Time / Consolidation Weeks)
Monday - Friday 10am - 3pm
Purchase online 24/7""",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          const SizedBox(height: 12),
          const Text(
            'Union Shop',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '© 2025 Union Shop. All rights reserved.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(width: 16),
              Text(
                'Products',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(width: 16),
              Text(
                'About',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(width: 16),
              Text(
                'Contact',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter email for Latest offers',
                    hintStyle: TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Color(0xFF5a3a6b),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4d2963),
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Subscribed to Latest offers')),
                  );
                },
                child: const Text('Subscribe'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
