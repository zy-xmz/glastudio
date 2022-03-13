import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'demo',
        theme: ThemeData.light(),
        home: const BottomNavigation());
  }
}
