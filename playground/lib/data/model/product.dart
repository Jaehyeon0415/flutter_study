import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'category')
  final String category;

  @JsonKey(name: 'image')
  final String? image;

  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
  @override
  String toString() => 'Product: ${toJson()}';
}
