import 'package:flutter/material.dart';
import '../utils/app_layout.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({super.key});
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRHsE2auXjoA79A5o3Z9iwpTHYmOVQhnvVRw&usqp=CAU',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPn5ZZXF-eA7CgXUqRk0CLCjSzC1ZhuKXpmg&usqp=CAU',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWWa72EdSxFh8smu9Zaa0Aaifp_hrwvyFBCA&usqp=CAU',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROPHgkZYTzALOfEjZm0Nm0yTEjaoIcBMUK0w&usqp=CAU',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(
          AppLayout.getHeight(10),
        ),
        itemCount: loadedProducts.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: AppLayout.getWidth(200),
          childAspectRatio: 3 / 2,
          crossAxisSpacing: AppLayout.getWidth(20),
          mainAxisSpacing: AppLayout.getHeight(20),
        ),
        itemBuilder: (context, index) => ProductItem(loadedProducts[index].id,
            loadedProducts[index].title, loadedProducts[index].imageUrl),
      ),
    );
  }
}
