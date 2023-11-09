import 'package:flutter/material.dart';
import 'package:twitter_home_screen/screens/home_screen.dart';
import 'package:twitter_home_screen/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: HomeScreen(),
    );
  }
}
