import 'package:flutter_api_application/model/blush.dart';
import 'package:flutter_api_application/services/remote_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteProducts.fetchProductData();
    if (products != null) productList.value = products;
  }
}
