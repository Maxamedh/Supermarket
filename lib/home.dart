import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Supermarket App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 254, 246, 235),
          image: DecorationImage(
            image: AssetImage('assets/super_background1.png'), // Corrected image path if needed
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Responsive Logo Positioning
            Container(

              margin: EdgeInsets.only(
                left: screenWidth * 0.53,  // This positions the logo at 70% of the screen width
                top: screenHeight * 0.2,  // Top margin is 10% of the screen height
              ),
              child: Card(
                elevation: 0,
                color: const Color.fromARGB(255, 254, 246, 235),
                child: Image.asset(
                  'assets/supermarket_logo.png',  // Ensure the image path is correct
                  width: screenWidth * 0.2,  // Logo width is 20% of the screen width
                  height: screenHeight * 0.1,  // Logo height is 10% of the screen height
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Centered Text (Responsive)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Welcome to Supermarket App',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,  // Font size is responsive
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
