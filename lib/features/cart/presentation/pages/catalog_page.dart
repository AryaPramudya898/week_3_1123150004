import 'package:flutter/material.dart';
import 'package:week_3_1123150004/core/routes/app_router.dart';
import 'package:week_3_1123150004/features/cart/domain/entities/product.dart';
import 'package:week_3_1123150004/features/cart/presentation/widgets/add_button_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(id: '1', name: 'Taro Latte', price: '27000'),
      Product(id: '2', name: 'Red Velvet Latte', price: '29000'),
      Product(id: '3', name: 'Chicken Popcorn', price: '24000'),
      Product(id: '4', name: 'Onion Rings', price: '22000'),
    ];
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: Text('Catalog', style: TextStyle(color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: () => Navigator.pushNamed(context, AppRouter.cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            trailing: AddButtonWidget(product: products[index]),
          );
        },
      ),
    );
  }
}
