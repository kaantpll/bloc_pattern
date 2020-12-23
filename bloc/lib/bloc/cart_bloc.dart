import 'dart:async';

import 'package:bloc/data/cart_service.dart';
import 'package:bloc/models/cart.dart';

class CartBloc {
  final cartStreamController = StreamController.broadcast();

  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item) {
    CartService.addtoCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  void removeFromCart(Cart item) {
    CartService.removeToCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  List<Cart> getAll() {
    return CartService.getCart();
  }
}

final cartBloc = CartBloc();
