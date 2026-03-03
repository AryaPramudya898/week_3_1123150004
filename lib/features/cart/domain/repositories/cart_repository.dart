import 'package:week_3_1123150004/features/cart/domain/entities/product.dart';

abstract class CartRepository {
  List<Product> getCartItems();
  void addItem(Product product);
  void removeAllItems();
  bool isItemInCart(String productId);
}