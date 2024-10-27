import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  List<Map<String, String>> onboardingData = [
    {"image": "assets/illustration1.png", "title": "Welcome!", "description": "Discover fresh groceries."},
    {"image": "assets/illustration2.png", "title": "Shop Smart", "description": "Order with ease."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => currentIndex = index);
              },
              itemCount: onboardingData.length,
              itemBuilder: (context, index) {
                return OnboardingContent(
                  image: onboardingData[index]['image']!,
                  title: onboardingData[index]['title']!,
                  description: onboardingData[index]['description']!,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(onboardingData.length, (index) =>
                buildDot(index: index),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to Login or Home
            },
            child: Text(currentIndex == onboardingData.length - 1 ? "Get Started" : "Next"),
          ),
        ],
      ),
    );
  }

  Widget buildDot({required int index}) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      height: 10,
      width: currentIndex == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentIndex == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String image, title, description;
  OnboardingContent({required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300),
        SizedBox(height: 20),
        Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text(description, textAlign: TextAlign.center),
      ],
    );
  }
}
