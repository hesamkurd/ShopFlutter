import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/edit_product_screen.dart';
import '../widgets/app_drawer.dart';
import '../widgets/user_product_item.dart';
import '../provider/products.dart';

class UserProductScreen extends StatelessWidget {
  static const routeName = '/user-products';
  const UserProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Product'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: productsData.items.length,
        itemBuilder: (_, i) => Column(
          children: [
            UserProductItem(
              productsData.items[i].title!,
              productsData.items[i].imageUrl!,
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
