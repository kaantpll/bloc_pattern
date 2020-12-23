import 'package:bloc/screens/cart_screen.dart';
import 'package:bloc/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => ProductListScreen(),
        '/cart': (context) => CartScreen(),
      },
      initialRoute: '/',
    );
  }
}
