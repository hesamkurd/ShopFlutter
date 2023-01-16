import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/products.dart';

class ProductDetailsScreen extends StatelessWidget {
  //final String title;
  static const routeName = '/product-details';
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),
    );
  }
}
