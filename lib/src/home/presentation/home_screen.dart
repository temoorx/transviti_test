import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transviti_test/src/home/provider/home_provider.dart';

import '../data/products_model.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
        ),
        body: productProvider.products.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: productProvider.products
                      .map((product) => ListTile(
                            leading: Image.network(product.thumbnail),
                            title: Text(product.title),
                            subtitle: Text('ID: ${product.id}'),
                          ))
                      .toList(),
                ),
              ));
  }
}
