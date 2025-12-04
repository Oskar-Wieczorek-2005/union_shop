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

const String upsuImage =
    'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282';

// Unique product instances
final Product portsmouthUniversityShirt = Product(
  title: 'Portsmouth University Shirt',
  price: 20.00,
  imageUrl: upsuImage,
  description: 'Comfortable shirt with Portsmouth University logo.',
);

final Product portsmouthUniversityHoodie = Product(
  title: 'Portsmouth University Hoodie',
  price: 25.00,
  imageUrl: upsuImage,
  description: 'Warm hoodie with Portsmouth University branding.',
);

final Product portsmouthPolo = Product(
  title: 'Portsmouth Polo',
  price: 22.00,
  imageUrl: upsuImage,
  description: 'Smart polo for everyday wear.',
);

final Product portsmouthLightweightJacket = Product(
  title: 'Portsmouth Lightweight Jacket',
  price: 35.00,
  imageUrl: upsuImage,
  description: 'Windproof lightweight jacket with logo.',
);

final Product portsmouthCap = Product(
  title: 'Portsmouth Cap',
  price: 12.00,
  imageUrl: upsuImage,
  description: 'Adjustable cap with embroidered crest.',
);

final Product portsmouthSportsTank = Product(
  title: 'Portsmouth Sports Tank',
  price: 18.00,
  imageUrl: upsuImage,
  description: 'Breathable tank top for sports and gym.',
);

final Product upsKeyring = Product(
  title: 'UPS Keyring',
  price: 4.50,
  imageUrl: upsuImage,
  description: 'Metal keyring with union crest.',
);

final Product upsMug = Product(
  title: 'UPS Mug',
  price: 8.00,
  imageUrl: upsuImage,
  description: 'Ceramic mug with university print.',
);

final Product upsToteBag = Product(
  title: 'UPS Tote Bag',
  price: 6.00,
  imageUrl: upsuImage,
  description: 'Reusable cotton tote bag.',
);

final Product stickerPack = Product(
  title: 'Sticker Pack',
  price: 3.00,
  imageUrl: upsuImage,
  description: 'Pack of assorted union stickers.',
);

final Product notebook = Product(
  title: 'Notebook',
  price: 5.00,
  imageUrl: upsuImage,
  description: 'A5 lined notebook with logo.',
);

final Product penSet = Product(
  title: 'Pen Set',
  price: 2.50,
  imageUrl: upsuImage,
  description: 'Pack of branded ballpoint pens.',
);

final Product spookyTee = Product(
  title: 'Spooky Tee',
  price: 16.00,
  imageUrl: upsuImage,
  description: 'Halloween themed tee with glow print.',
);

final Product signatureCap = Product(
  title: 'Signature Cap',
  price: 10.00,
  imageUrl: upsuImage,
  description: 'Minimalist cap with small logo.',
);

final Product signatureSocks = Product(
  title: 'Signature Socks',
  price: 4.00,
  imageUrl: upsuImage,
  description: 'Comfort-fit ankle socks.',
);

final Product prideWristband = Product(
  title: 'Pride Wristband',
  price: 2.50,
  imageUrl: upsuImage,
  description: 'Silicone wristband with rainbow colours.',
);

final Product prideFlag = Product(
  title: 'Pride Flag',
  price: 9.00,
  imageUrl: upsuImage,
  description: 'Small handheld pride flag.',
);

final Product graduationGownHire = Product(
  title: 'Graduation Gown Hire',
  price: 45.00,
  imageUrl: upsuImage,
  description: 'Rent a gown for graduation ceremonies.',
);

final Product graduationSash = Product(
  title: 'Graduation Sash',
  price: 12.00,
  imageUrl: upsuImage,
  description: 'Customisable sash for graduating students.',
);

// Section lists (collections) built from the shared product instances.
final List<Product> clothing = [
  portsmouthUniversityShirt,
  portsmouthUniversityHoodie,
  portsmouthPolo,
  portsmouthLightweightJacket,
  portsmouthCap,
  portsmouthSportsTank,
];

final List<Product> merchandise = [
  upsKeyring,
  upsMug,
  upsToteBag,
  stickerPack,
  notebook,
  penSet,
];

final List<Product> halloween = [
  portsmouthUniversityShirt,
  portsmouthUniversityHoodie,
  portsmouthCap,
  portsmouthSportsTank,
  spookyTee,
  upsMug,
];

final List<Product> signutureEssentialRange = [
  portsmouthUniversityShirt,
  portsmouthPolo,
  portsmouthSportsTank,
  upsToteBag,
  signatureCap,
  signatureSocks,
];

final List<Product> portsmouthCityCollection = [
  portsmouthUniversityShirt,
  portsmouthLightweightJacket,
  portsmouthCap,
  upsToteBag,
  stickerPack,
  upsKeyring,
];

final List<Product> prideCollection = [
  portsmouthUniversityHoodie,
  portsmouthUniversityShirt,
  upsToteBag,
  penSet,
  prideWristband,
  prideFlag,
];

final List<Product> graduation = [
  portsmouthUniversityShirt,
  portsmouthUniversityHoodie,
  upsMug,
  upsKeyring,
  graduationGownHire,
  graduationSash,
];
