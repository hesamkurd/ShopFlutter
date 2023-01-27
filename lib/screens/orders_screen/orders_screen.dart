import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/order.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/orders_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer:const AppDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) => OrdersItem(
          ordersData.orders[index],
        ),
        itemCount: ordersData.orders.length,
      ),
    );
  }
}
