import 'package:flutter/material.dart';

class OrderConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Order Confirmed")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text("Order Confirmed!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("Estimated Delivery: 3-5 days"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, // Continue shopping action
              child: Text("Continue Shopping"),
            ),
          ],
        ),
      ),
    );
  }
}
