import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/utils/app_layout.dart';
import '../provider/products.dart';

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
      appBar: AppBar(title: Text(loadedProduct.title!)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: AppLayout.getHeight(12)),
              height: AppLayout.getHeight(300),
              width: double.infinity,
              child: Image.network(
                loadedProduct.imageUrl!,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              '\$${loadedProduct.price}',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(12),
            ),
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(10),
                ),
                width: double.infinity,
                child: Text(
                  loadedProduct.description!,
                  textAlign: TextAlign.center,
                  softWrap: true,
                )),
          ],
        ),
      ),
    );
  }
}
