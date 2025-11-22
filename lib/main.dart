import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MysteryShopApp());
}

class MysteryShopApp extends StatelessWidget {
  const MysteryShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mystery Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),

      home: HomeScreen(),
    );
  }
}
