import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
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
  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return items.firstWhere((product) => product.id == id);
  }

  void addProduct() {
    //_items.add(value);
    notifyListeners();
  }
}
