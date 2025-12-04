import 'package:flutter/material.dart';
import 'main.dart';
import 'models/product_model.dart';

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
