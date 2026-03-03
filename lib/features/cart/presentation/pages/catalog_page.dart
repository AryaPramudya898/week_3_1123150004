import 'package:flutter/material.dart';
import 'package:week_3_1123150004/features/cart/domain/entities/product.dart';

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
    return const Placeholder();
  }
}
