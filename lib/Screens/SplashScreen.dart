import 'package:flutter/material.dart';
import 'package:test1/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to Home Page after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo or Image
            Image.asset('assets/supermarket_logo.png', width: 150), // Add your image here
            SizedBox(height: 20),
            // Loading Indicator (Optional)
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}