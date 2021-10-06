import 'package:flutter/material.dart';
import 'package:flutter_api_application/view/pages/home.dart';
import 'package:get/get.dart';

void main() => runApp(const APIApp());

class APIApp extends StatelessWidget {
  const APIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter API Application',
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}
