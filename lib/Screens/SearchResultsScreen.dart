import 'package:flutter/material.dart';

class SearchResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search for products...",
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.filter_list), onPressed: () {}), // Filters
        ],
      ),
      // body: ProductListingScreen(), // Reuse product listing screen layout
    );
  }
}
