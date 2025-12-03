import 'package:flutter/material.dart';
import 'main.dart';

<<<<<<< HEAD
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

=======
>>>>>>> 99df224ec72591c0326dbb790c90c3fa1565b6e1
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
