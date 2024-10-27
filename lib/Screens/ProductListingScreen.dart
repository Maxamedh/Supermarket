import 'package:flutter/material.dart';

class ProductListingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        actions: [
          IconButton(icon: Icon(Icons.filter_list), onPressed: () {}), // Filters
          IconButton(icon: Icon(Icons.sort), onPressed: () {}), // Sorting
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: 20, // Example count
        itemBuilder: (context, index) {
          // return ProductCard(); // Implement your custom ProductCard widget
        },
      ),
    );
  }
}
