import 'package:flutter/material.dart';
import 'main.dart';

const String _upsuImage =
    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282';

// Unique product instances
final Product portsmouthUniversityShirt = Product(
  title: 'Portsmouth University Shirt',
  price: 20.00,
  imageUrl: _upsuImage,
  description: 'Comfortable shirt with Portsmouth University logo.',
);

final Product portsmouthUniversityHoodie = Product(
  title: 'Portsmouth University Hoodie',
  price: 25.00,
  imageUrl: _upsuImage,
  description: 'Warm hoodie with Portsmouth University branding.',
);

final Product portsmouthPolo = Product(
  title: 'Portsmouth Polo',
  price: 22.00,
  imageUrl: _upsuImage,
  description: 'Smart polo for everyday wear.',
);

final Product portsmouthLightweightJacket = Product(
  title: 'Portsmouth Lightweight Jacket',
  price: 35.00,
  imageUrl: _upsuImage,
  description: 'Windproof lightweight jacket with logo.',
);

final Product portsmouthCap = Product(
  title: 'Portsmouth Cap',
  price: 12.00,
  imageUrl: _upsuImage,
  description: 'Adjustable cap with embroidered crest.',
);

final Product portsmouthSportsTank = Product(
  title: 'Portsmouth Sports Tank',
  price: 18.00,
  imageUrl: _upsuImage,
  description: 'Breathable tank top for sports and gym.',
);

final Product upsKeyring = Product(
  title: 'UPS Keyring',
  price: 4.50,
  imageUrl: _upsuImage,
  description: 'Metal keyring with union crest.',
);

final Product upsMug = Product(
  title: 'UPS Mug',
  price: 8.00,
  imageUrl: _upsuImage,
  description: 'Ceramic mug with university print.',
);

final Product upsToteBag = Product(
  title: 'UPS Tote Bag',
  price: 6.00,
  imageUrl: _upsuImage,
  description: 'Reusable cotton tote bag.',
);

final Product stickerPack = Product(
  title: 'Sticker Pack',
  price: 3.00,
  imageUrl: _upsuImage,
  description: 'Pack of assorted union stickers.',
);

final Product notebook = Product(
  title: 'Notebook',
  price: 5.00,
  imageUrl: _upsuImage,
  description: 'A5 lined notebook with logo.',
);

final Product penSet = Product(
  title: 'Pen Set',
  price: 2.50,
  imageUrl: _upsuImage,
  description: 'Pack of branded ballpoint pens.',
);

final Product spookyTee = Product(
  title: 'Spooky Tee',
  price: 16.00,
  imageUrl: _upsuImage,
  description: 'Halloween themed tee with glow print.',
);

final Product signatureCap = Product(
  title: 'Signature Cap',
  price: 10.00,
  imageUrl: _upsuImage,
  description: 'Minimalist cap with small logo.',
);

final Product signatureSocks = Product(
  title: 'Signature Socks',
  price: 4.00,
  imageUrl: _upsuImage,
  description: 'Comfort-fit ankle socks.',
);

final Product prideWristband = Product(
  title: 'Pride Wristband',
  price: 2.50,
  imageUrl: _upsuImage,
  description: 'Silicone wristband with rainbow colours.',
);

final Product prideFlag = Product(
  title: 'Pride Flag',
  price: 9.00,
  imageUrl: _upsuImage,
  description: 'Small handheld pride flag.',
);

final Product graduationGownHire = Product(
  title: 'Graduation Gown Hire',
  price: 45.00,
  imageUrl: _upsuImage,
  description: 'Rent a gown for graduation ceremonies.',
);

final Product graduationSash = Product(
  title: 'Graduation Sash',
  price: 12.00,
  imageUrl: _upsuImage,
  description: 'Customisable sash for graduating students.',
);

// Clothing keeps its own items.
final List<Product> clothing = [
  portsmouthUniversityShirt,
  portsmouthUniversityHoodie,
  portsmouthPolo,
  portsmouthLightweightJacket,
  portsmouthCap,
  portsmouthSportsTank,
];

// Merchandise keeps its own items.
final List<Product> merchandise = [
  upsKeyring,
  upsMug,
  upsToteBag,
  stickerPack,
  notebook,
  penSet,
];

// Halloween reuses mostly clothing + one unique + reused mug.
final List<Product> halloween = [
  portsmouthUniversityShirt,
  portsmouthUniversityHoodie,
  portsmouthCap,
  portsmouthSportsTank,
  spookyTee,
  upsMug,
];

// Signature range reuses clothing + tote and signature items.
final List<Product> signutureEssentialRange = [
  portsmouthUniversityShirt,
  portsmouthPolo,
  portsmouthSportsTank,
  upsToteBag,
  signatureCap,
  signatureSocks,
];

// Portsmouth City collection reuses clothing + some merch.
final List<Product> portsmouthCityCollection = [
  portsmouthUniversityShirt,
  portsmouthLightweightJacket,
  portsmouthCap,
  upsToteBag,
  stickerPack,
  upsKeyring,
];

// Pride collection reuses tote, hoodie, tee, pen, and unique pride items.
final List<Product> prideCollection = [
  portsmouthUniversityHoodie,
  portsmouthUniversityShirt,
  upsToteBag,
  penSet,
  prideWristband,
  prideFlag,
];

// Graduation reuses mug, keyring, shirt, hoodie plus 2 uniques.
final List<Product> graduation = [
  portsmouthUniversityShirt,
  portsmouthUniversityHoodie,
  upsMug,
  upsKeyring,
  graduationGownHire,
  graduationSash,
];

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  MapEntry<String, List<Product>> _resolveCollection(String? key) {
    switch (key) {
      case 'clothing':
        return MapEntry('Clothing', clothing);
      case 'merchandise':
        return MapEntry('Merchandise', merchandise);
      case 'halloween':
        return MapEntry('Halloween', halloween);
      case 'signature':
        return MapEntry('Signature & Essential Range', signutureEssentialRange);
      case 'portsmouthCity':
        return MapEntry('Portsmouth City Collection', portsmouthCityCollection);
      case 'pride':
        return MapEntry('Pr*de Collection', prideCollection);
      case 'graduation':
        return MapEntry('Graduation', graduation);
      default:
        return MapEntry('All Products', products);
    }
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments;

    String? collectionKey;
    String? filterLabel;

    if (arg is String) {
      collectionKey = arg;
    } else if (arg is Map) {
      collectionKey = arg['collectionKey'] as String?;
      filterLabel = arg['filter'] as String?;
    }

    final resolved = _resolveCollection(collectionKey);
    final String title = resolved.key;
    final List<Product> baseList = resolved.value;
    final List<Product> list = List<Product>.from(baseList);
    if (filterLabel == 'Price: Low to High') {
      list.sort((a, b) => a.price.compareTo(b.price));
    } else if (filterLabel == 'Product Name: A to Z') {
      list.sort(
          (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              onHomeTap: () =>
                  Navigator.pushNamedAndRemoveUntil(context, '/', (r) => false),
              onPlaceholderTap: () {},
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    'Filter by',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: 16),
                  DropdownButton<String>(
                    value: filterLabel,
                    hint: const Text('Choose a filler:'),
                    onChanged: (value) {
                      if (value == null) return;
                      Navigator.pushReplacementNamed(
                        context,
                        '/collections',
                        arguments: {
                          'collectionKey': collectionKey,
                          'filter': value,
                        },
                      );
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Price: Low to High',
                        child: Text('Price: Low to High'),
                      ),
                      DropdownMenuItem(
                        value: 'Product Name: A to Z',
                        child: Text('Product Name: A to Z'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 900 ? 3 : 2,
                      mainAxisSpacing: 24,
                      crossAxisSpacing: 24,
                      childAspectRatio: 3 / 4,
                    ),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final p = list[index];
                      return ProductCard(
                        title: p.title,
                        price: p.price,
                        imageUrl: p.imageUrl,
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            '/product',
                            arguments: p,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
