import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_application/model/blush.dart';
import 'package:ionicons/ionicons.dart';

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
              'https://picsum.photos/250?image=9',
              fit: BoxFit.fill,
            ),
          ),
          ListTile(
            title: const Text('Product Name'),
            subtitle: const Text('P200.00'),
            trailing:
                OutlinedButton(onPressed: () {}, child: const Text('More')),
          ),
        ],
      ),
    );
  }
}
