import 'package:flutter/material.dart';
import 'package:shop_app_flutter/screens/product_details/product_details_screen.dart';
import 'package:shop_app_flutter/utils/app_layout.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUlr;
  const ProductItem(this.id, this.title, this.imageUlr, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        AppLayout.getHeight(12),
      ),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary,
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailsScreen.routeName,
              arguments: id,
            );
          },
          child: Image.network(
            imageUlr,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
