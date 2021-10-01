import 'package:flutter/material.dart';
import 'package:flutter_api_application/model/blush.dart';
import 'package:flutter_api_application/view/product_widgets/products.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Ionicons.menu)),
        title: const Text('API App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.cart),
          ),
        ],
        bottom: PreferredSize(
          child: SizedBox(
            height: 54.0,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Shopping App'),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Ionicons.list),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Ionicons.grid),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(54.0),
        ),
      ),
      body: ProductView(),
    );
  }
}
