import 'dart:convert';

ProductModel userModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String userModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.status,
    required this.isFavorite
  });

  String id;
  String name;
  String image;
  String price;
  String description;
  String status;
  bool isFavorite;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'],
        name: json['name'],
        image: json['image'],
        price: json['price'],
        description: json['description'],
        status: json['status'],
        isFavorite: false,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'description': description,
        'image': image,
        'status': status,
        'isFavorite': isFavorite,
      };
}
