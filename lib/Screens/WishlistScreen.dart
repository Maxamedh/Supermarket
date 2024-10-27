import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wishlist")),
      body: ListView.builder(
        itemCount: 10, // Example count
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Product Name $index"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {}, // Add to cart action
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {}, // Remove from wishlist action
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
