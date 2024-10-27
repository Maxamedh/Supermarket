import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ProductImageCarousel(), // Implement image carousel widget
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Product Name", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text("Price: \$20.00", style: TextStyle(fontSize: 20, color: Colors.red)),
                  SizedBox(height: 16),
                  Text("Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {}, // Add to cart action
                    child: Text("Add to Cart"),
                  ),
                ],
              ),
            ),
            // RelatedProducts(), // Implement related products widget
          ],
        ),
      ),
    );
  }
}
