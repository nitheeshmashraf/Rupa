// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.response,
    this.count,
    this.type,
  });

  List<ProductResponse> response;
  int count;
  String type;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        response: List<ProductResponse>.from(
            json["response"].map((x) => ProductResponse.fromJson(x))),
        count: json["count"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "response": List<dynamic>.from(response.map((x) => x.toJson())),
        "count": count,
        "type": type,
      };
}

class ProductResponse {
  ProductResponse({
    this.id,
    this.productId,
    this.productName,
    this.measure,
    this.dateAdded,
    this.quantity,
    this.price,
  });

  int id;
  String productId;
  String productName;
  String measure;
  String dateAdded;
  int quantity;
  int price;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      ProductResponse(
        id: json["id"],
        productId: json["product_id"],
        productName: json["product_name"],
        measure: json["measure"],
        dateAdded: json["date_added"],
        quantity: json["quantity"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "product_name": productName,
        "measure": measure,
        "date_added": dateAdded,
        "quantity": quantity,
        "price": price,
      };
}
