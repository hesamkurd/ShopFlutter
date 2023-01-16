import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  //final String title;
  static const routeName = '/product-details';
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title')),
    );
  }
}
