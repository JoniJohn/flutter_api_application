import 'dart:convert';

import 'package:flutter_api_application/model/blush.dart';
import 'package:http/http.dart';

class RemoteProducts {
  static Client client = Client();
  static Future<List<Product>?> fetchProductData() async {
    var res = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?product_type=blush'));
    if (res.statusCode == 200) {
      String jsonString = res.body.toString();
      return List<Product>.from(
          json.decode(jsonString).map((prod) => Product.fromJson(prod)));
    } else {
      return null;
    }
  }
}
