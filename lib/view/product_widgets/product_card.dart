import 'package:flutter/material.dart';
import 'package:flutter_api_application/model/blush.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.blush}) : super(key: key);
  final Product blush;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          SizedBox(
            height: 160,
            child: Image.network(
              blush.imageLink!,
              fit: BoxFit.fill,
            ),
          ),
          ListTile(
            title: Text('${blush.name}'),
            subtitle: Text('${blush.priceSign ?? '\$'}${blush.price}'),
            trailing:
                OutlinedButton(onPressed: () {}, child: const Text('More')),
          ),
        ],
      ),
    );
  }
}
