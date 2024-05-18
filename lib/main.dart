import 'package:flutter/material.dart';

import 'package:uklperlu/splash_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color:  Colors.grey[300],
      title: 'Perlu Tukang',
      home: splash(),
    );
  }
}