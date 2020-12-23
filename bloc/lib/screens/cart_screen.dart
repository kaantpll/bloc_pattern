import 'package:bloc/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: listCart(),
    );
  }

  listCart() {
    return StreamBuilder(
      stream: cartBloc.getStream,
      initialData: cartBloc.getAll(),
      builder: (BuildContext context, snapshot) {
        return snapshot.data.length > 0
            ? cartlistele(snapshot)
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }

  cartlistele(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, index) {
        final list = snapshot.data;
        return ListTile(
          title: Text(list[index].product.name),
          subtitle: Text(list[index].product.price.toString()),
          trailing: IconButton(
            icon: Icon(Icons.remove_shopping_cart),
            onPressed: () {
              cartBloc.removeFromCart(list[index]);
            },
          ),
        );
      },
    );
  }
}
