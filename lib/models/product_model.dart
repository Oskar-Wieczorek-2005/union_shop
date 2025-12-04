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

final Product portsmouthUniversityShirt = Product(
  title: 'Portsmouth University Shirt',
  price: 20.00,
  imageUrl: 'assets/images/PU_shirt.png',
  description: 'Comfortable shirt with Portsmouth University logo.',
);

final Product portsmouthUniversityHoodie = Product(
  title: 'Portsmouth University Hoodie',
  price: 25.00,
  imageUrl: 'assets/images/PU_hoodie.png',
  description: 'Warm hoodie with Portsmouth University branding.',
);

final Product portsmouthPolo = Product(
  title: 'Portsmouth Polo',
  price: 22.00,
  imageUrl: 'assets/images/PU_polo.png',
  description: 'Smart polo for everyday wear.',
);

final Product portsmouthLightweightJacket = Product(
  title: 'Portsmouth Lightweight Jacket',
  price: 35.00,
  imageUrl: 'assets/images/PU_jacket.png',
  description: 'Windproof lightweight jacket with logo.',
);

final Product portsmouthCap = Product(
  title: 'Portsmouth Cap',
  price: 12.00,
  imageUrl: 'assets/images/PU_cap.png',
  description: 'Adjustable cap with embroidered crest.',
);

final Product portsmouthSportsTank = Product(
  title: 'Portsmouth Sports Tank',
  price: 18.00,
  imageUrl: 'assets/images/PU_tank.png',
  description: 'Breathable tank top for sports and gym.',
);

final Product upsKeyring = Product(
  title: 'UPS Keyring',
  price: 4.50,
  imageUrl: 'assets/images/PU_keyring.png',
  description: 'Metal keyring with union crest.',
);

final Product upsMug = Product(
  title: 'UPS Mug',
  price: 8.00,
  imageUrl: 'assets/images/PU_mug.png',
  description: 'Ceramic mug with university print.',
);

final Product upsToteBag = Product(
  title: 'UPS Tote Bag',
  price: 6.00,
  imageUrl: 'assets/images/PU_totebag.png',
  description: 'Reusable cotton tote bag.',
);

final Product stickerPack = Product(
  title: 'Sticker Pack',
  price: 3.00,
  imageUrl: 'assets/images/PU_stickerpack.png',
  description: 'Pack of assorted union stickers.',
);

final Product notebook = Product(
  title: 'Notebook',
  price: 5.00,
  imageUrl: 'assets/images/PU_notebook.png',
  description: 'A5 lined notebook with logo.',
);

final Product penSet = Product(
  title: 'Pen Set',
  price: 2.50,
  imageUrl: 'assets/images/PU_penset.png',
  description: 'Pack of branded ballpoint pens.',
);

final Product spookyTee = Product(
  title: 'Spooky Tee',
  price: 16.00,
  imageUrl: 'assets/images/PU_tree.png',
  description: 'Halloween themed tee with glow print.',
);

final Product signatureSocks = Product(
  title: 'Signature Socks',
  price: 4.00,
  imageUrl: 'assets/images/PU_socks.png',
  description: 'Comfort-fit ankle socks.',
);

final Product prideWristband = Product(
  title: 'Pride Wristband',
  price: 2.50,
  imageUrl: 'assets/images/PU_wristband.png',
  description: 'Silicone wristband with rainbow colours.',
);

final Product prideFlag = Product(
  title: 'Pride Flag',
  price: 9.00,
  imageUrl: 'assets/images/PU_flag.png',
  description: 'Small handheld pride flag.',
);

final Product graduationGownHire = Product(
  title: 'Graduation Gown Hire',
  price: 45.00,
  imageUrl: 'assets/images/PU_gown.png',
  description: 'Rent a gown for graduation ceremonies.',
);

final Product graduationSash = Product(
  title: 'Graduation Sash',
  price: 12.00,
  imageUrl: 'assets/images/PU_sash.png',
  description: 'Customisable sash for graduating students.',
);

final List<Product> clothing = [
  portsmouthUniversityShirt,
  portsmouthUniversityHoodie,
  portsmouthPolo,
  portsmouthLightweightJacket,
  portsmouthCap,
  portsmouthSportsTank,
  signatureSocks,
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
  spookyTee,
  portsmouthUniversityHoodie,
  upsMug,
];

final List<Product> signutureEssentialRange = [
  portsmouthUniversityShirt,
  portsmouthUniversityHoodie,
  portsmouthPolo,
  portsmouthCap,
  signatureSocks,
  upsToteBag,
];

final List<Product> portsmouthCityCollection = [
  portsmouthLightweightJacket,
  portsmouthCap,
  upsToteBag,
  upsKeyring,
  notebook,
];

final List<Product> prideCollection = [
  prideWristband,
  prideFlag,
  portsmouthUniversityHoodie,
  portsmouthSportsTank,
  upsToteBag,
  stickerPack,
];

final List<Product> graduation = [
  graduationGownHire,
  graduationSash,
  portsmouthUniversityShirt,
  upsMug,
  upsKeyring,
];
