import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order History")),
      body: ListView.builder(
        itemCount: 10, // Example count
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text("Order #$index"),
            subtitle: Text("Delivered on 20th Oct"),
            trailing: ElevatedButton(
              onPressed: () {}, // Reorder action
              child: Text("Reorder"),
            ),
          );
        },
      ),
    );
  }
}
