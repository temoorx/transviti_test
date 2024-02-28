import 'package:transviti_test/src/home/data/products_model.dart';
import 'package:dio/dio.dart';

class ProductRepository {
 final Dio _dio = Dio();
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<List<Product>> fetchProducts({int startIndex = 0, int endIndex = 10}) async {
  try {
      final response = await _dio.get('$baseUrl/photos');
      final List<dynamic> data = response.data;
      
      final start = startIndex.clamp(0, data.length);
      final end = endIndex.clamp(0, data.length);
      
      return data.sublist(start, end).map((json) => Product.fromJson(json)).toList();
    } catch (error) {
      throw Exception("Failed to fetch products: $error");
    }
  }
}
