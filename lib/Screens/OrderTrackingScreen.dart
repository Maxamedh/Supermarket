import 'package:flutter/material.dart';

class OrderTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Tracking")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.local_shipping),
            title: Text("Your order is on the way"),
            subtitle: Text("Estimated delivery in 3 days"),
          ),
          // OrderProgress(), // Implement order progress widget
          // Display delivery details or map if needed
        ],
      ),
    );
  }
}
