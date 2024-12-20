import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp()); // Use const constructor here
}

class MyApp extends StatelessWidget {
  // Add a named 'key' parameter to the constructor
  const MyApp({super.key}); // Use the key parameter in the constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PocketPay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(), // Use const for HomePage
    );
  }
}
