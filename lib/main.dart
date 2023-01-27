import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_flutter/screens/orders_screen.dart';
import 'package:shop_app_flutter/screens/user_product_screen.dart';
import './provider/order.dart';
import 'screens/cart_screen.dart';
import './provider/cart.dart';
import 'screens/product_details_screen.dart';
import 'screens/products_overview_screen.dart';
import './provider/products.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (context) => Orders(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (context) =>
              const ProductDetailsScreen(),
          CartScreen.routeName: (context) => const CartScreen(),
          OrdersScreen.routeName: (context) => const OrdersScreen(),
          UserProductScreen.routeName: (context) => const UserProductScreen(),
        },
      ),
    );
  }
}
