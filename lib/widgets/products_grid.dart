import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/products.dart';
import '../utils/app_layout.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavorites;

  const ProductsGrid(this.showFavorites,{super.key });

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = showFavorites ? productData.favoriteItems : productData.items;
    return GridView.builder(
        padding: EdgeInsets.all(
          AppLayout.getHeight(10),
        ),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: AppLayout.getWidth(200),
          childAspectRatio: 3 / 2,
          crossAxisSpacing: AppLayout.getWidth(20),
          mainAxisSpacing: AppLayout.getHeight(20),
        ),
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
              //create: (c) => products[index],
              value: products[index],
              child: const ProductItem(
                  // products[index].id,
                  // products[index].title,
                  // products[index].imageUrl,
                  ),
            ));
  }
}
