import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/product_details/product_details_screen.dart';
import './screens/product_overview/products_overview_screen.dart';
import './provider/products.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName:(context) => const ProductDetailsScreen()
        },
      ),
    );
  }
}
