import 'package:flutter/foundation.dart';

class Product {
  int? id;
  String? brand;
  String? name;
  String? price;
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

  Product.fromJson(Map<String, dynamic> parseJson) {
    if (kDebugMode) {
      print("PRINT BLUSH: ${parseJson['name']}");
    }
    id = parseJson['id'];
    brand = parseJson['brand'];
    name = parseJson['name'];
    price = parseJson['price'];
    priceSign = parseJson['price_sign'];
    currency = parseJson['currency'];
    imageLink = parseJson['image_link'];
    prouducLink = parseJson['product_link'];
    websiteLink = parseJson['website_link'];
    description = parseJson['desciption'];
    rating = parseJson['rating'];
    category = parseJson['category'];
    productType = parseJson['product_type'];
    createdAt = parseJson['created_at'] != null
        ? DateTime.tryParse(parseJson['created_at'])
        : null;
    updatedAt = parseJson['updated_at'] != null
        ? DateTime.tryParse(parseJson['updated_at'])
        : null;
    apiURL = parseJson['product_api_url'];
    apiFeatureImage = parseJson['api_feature_image'];
    tags = parseJson['tag_list'] != null
        ? List<String>.from(parseJson['tag_list'].map((tag) => tag))
        : [];
    productColors = parseJson['product_list'] != null
        ? List<ProductColors>.from(parseJson['product_list']
            .map((color) => ProductColors.fromJson(color)))
        : [];
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
