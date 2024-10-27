import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(radius: 50, backgroundImage: AssetImage('assets/profile_pic.png')),
            SizedBox(height: 20),
            Text("John Doe", style: TextStyle(fontSize: 24)),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("Order History"),
              onTap: () {}, // Navigate to order history
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Manage Addresses"),
              onTap: () {}, // Navigate to manage addresses
            ),
          ],
        ),
      ),
    );
  }
}
