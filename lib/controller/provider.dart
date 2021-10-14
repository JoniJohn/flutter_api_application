import 'package:get/get.dart';

class ProductProvider extends GetConnect {
  String url = '';
  Future<dynamic> getProducts() async {
    final res = await get(url);
    if (res.hasError) {
      return Future.error(res.statusText!);
    } else {
      return res.body;
    }
  }
}
