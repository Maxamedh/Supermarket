import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // CartItem(), // Implement a CartItem widget for each item in the cart
          SizedBox(height: 20),
          Text("Subtotal: \$40.00", style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {}, // Proceed to checkout
            child: Text("Checkout"),
          ),
        ],
      ),
    );
  }
}
