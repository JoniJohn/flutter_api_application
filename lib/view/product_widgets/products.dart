import 'package:flutter/material.dart';
import 'package:flutter_api_application/model/blush.dart';
import 'package:flutter_api_application/view/product_widgets/product_card.dart';

class ProductView extends StatelessWidget {
  ProductView({
    Key? key,
  }) : super(key: key);

  final Product product = Product.fromJson({'name': 'name'});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      // crossAxisCount: 7,
      shrinkWrap: true,
      maxCrossAxisExtent: 250,
      children: List.generate(10, (index) => ProductCard(blush: product)),
    );
  }
}
