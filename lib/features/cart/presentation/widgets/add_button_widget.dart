import 'package:flutter/material.dart';
import 'package:week_3_1123150004/features/cart/domain/entities/product.dart';
import 'package:week_3_1123150004/features/cart/presentation/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class AddButtonWidget extends StatelessWidget {
  final Product product;
  const AddButtonWidget({required this.product, super.key});
  @override
  Widget build(BuildContext context) {
    final isInCart = context.select<CartProvider, bool>(
      (provider) => provider.isInCart(product.id),
    );
    return TextButton(
      onPressed: isInCart
          ? null
          : () => context.read<CartProvider>().addItem(product),
      child: isInCart
          ? const Icon(Icons.add_shopping_cart_outlined, color: Colors.green)
          : const Text('TAMBAH'),
    );
  }
}