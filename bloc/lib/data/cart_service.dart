import 'package:bloc/models/cart.dart';

class CartService {
  static List<Cart> cartItems = List<Cart>();

  static CartService _signLeton = CartService._();

  factory CartService() {
    return _signLeton;
  }
//singleton pattern
  CartService._();

  static void addtoCart(Cart item) {
    cartItems.add(item);
  }

  static void removeToCart(Cart item) {
    cartItems.remove(item);
  }

  static List<Cart> getCart() {
    return cartItems;
  }
}
