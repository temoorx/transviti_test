import 'package:flutter/material.dart';
import 'package:transviti_test/src/home/data/products_model.dart';

import 'package:flutter/material.dart';
import 'package:transviti_test/src/home/repository/repository.dart';

class ProductProvider extends ChangeNotifier {
  final ProductRepository _repository = ProductRepository();
  late List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    try {
      _products = await _repository.fetchProducts(startIndex: 0, endIndex: 10);
      notifyListeners();
    } catch (error) {
      debugPrint("Failed to fetch products: $error");
    }
  }
}
