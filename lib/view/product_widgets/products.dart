import 'package:flutter/material.dart';
import 'package:flutter_api_application/controllers/product_controller.dart';
import 'package:flutter_api_application/model/blush.dart';
import 'package:flutter_api_application/view/product_widgets/product_card.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  ProductView({
    Key? key,
  }) : super(key: key);

  final Product product = Product.fromJson({'name': 'name'});
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return GridView.extent(
          // crossAxisCount: 7,
          shrinkWrap: true,
          maxCrossAxisExtent: 250,
          children: List.generate(
              productController.productList.length,
              (index) =>
                  ProductCard(blush: productController.productList[index])),
        );
      },
    );
  }
}
