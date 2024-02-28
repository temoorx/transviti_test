import 'package:json_annotation/json_annotation.dart';

part 'products_model.g.dart';

@JsonSerializable()
class Product {
  final int albumId;
  final int id;
  final String title;
  final String url;
  @JsonKey(name: 'thumbnailUrl')
  final String thumbnail;

  Product({required this.albumId, required this.id, required this.title, required this.url, required this.thumbnail});

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
