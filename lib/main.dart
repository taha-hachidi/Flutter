import 'package:flutter/material.dart';
import './home.page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
              displayLarge: TextStyle(color: Colors.purple, fontSize: 50)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.green, primary: Colors.pink),
          indicatorColor: Colors.black26,
        ),
        home: HomePage());
  }
}
