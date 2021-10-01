import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.cart),
          ),
        ],
      ),
      body: const Center(
        child: Text('Some API data'),
      ),
    );
  }
}
