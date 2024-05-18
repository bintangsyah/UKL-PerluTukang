import 'package:flutter/material.dart';
import 'dart:async';

import 'package:uklperlu/halaman/homepage.dart'; // Import for Timer

// ... (your existing imports)

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Use MaterialApp to handle navigation
      home: SplashScreen(), // Set SplashScreen as the initial route
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()), // Navigate to HomePage after delay
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/PerluTukang.jpg'), // Replace with your logo image
            SizedBox(height: 20),
            CircularProgressIndicator(), // Show a loading indicator
          ],
        ),
      ),
    );
  }
}

