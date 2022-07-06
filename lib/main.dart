import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'test_a',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF8B5704),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 16, color: Color(0xFF8B5704), fontWeight: FontWeight.w900),
          headlineLarge: TextStyle(fontSize: 18, color: Colors.black),
          headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black, ),
          bodySmall: TextStyle(fontSize: 10, color: Color(0xFF8B5704), ),
          bodyMedium: TextStyle(fontSize: 12, color: Color(0xFF8B5704), fontWeight: FontWeight.w500),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400 ),
          titleSmall: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}