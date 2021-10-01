import 'package:flutter/foundation.dart';

class Blush {
  int? id;
  String? brand;
  String? name;
  double? price;
  String? priceSign;
  String? currency;
  String? imageLink;
  String? prouducLink;
  String? websiteLink;
  String? description;
  double? rating;
  String? category;
  String? productType;
  List<String>? tags;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? apiURL;
  String? apiFeatureImage;
  List<ProductColors>? productColors;

  Blush.fromJson(Map<String, dynamic> parseJson) {
    if (kDebugMode) {
      print("PRINT BLUSH: ${parseJson['name']}");
    }
    id = parseJson['id'];
    brand = parseJson['brand'];
    name = parseJson['name'];
    priceSign = parseJson['price_sign'];
    currency = parseJson['currency'];
    imageLink = parseJson['image_link'];
    prouducLink = parseJson['product_link'];
    websiteLink = parseJson['website_link'];
    description = parseJson['desciption'];
    rating = parseJson['rating'];
    category = parseJson['category'];
    productType = parseJson['product_type'];
    createdAt = DateTime.parse(parseJson['created_at']);
    updatedAt = DateTime.parse(parseJson['updated_at']);
    apiURL = parseJson['product_api_url'];
    apiFeatureImage = parseJson['api_feature_image'];
    tags = List<String>.from(parseJson['tag_list'].map((tag) => tag));
    productColors = List<ProductColors>.from(parseJson['product_list']
        .map((color) => ProductColors.fromJson(color)));
  }
}

class ProductColors {
  String? hexValue;
  String? colorName;

  ProductColors.fromJson(Map<String, dynamic> parseJson) {
    hexValue = parseJson['hex_value'];
    colorName = parseJson['color_name'];
  }
}
