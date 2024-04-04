import 'package:ff/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF9F9F9),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffF9F9F9),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
