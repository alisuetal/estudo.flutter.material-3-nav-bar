import 'package:bottomnavbar/pages/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material 3 Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: BottomNavBar(),
    );
  }
}
