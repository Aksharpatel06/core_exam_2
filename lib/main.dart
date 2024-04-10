import 'package:coreexam/view/datascreen/data_screen.dart';
import 'package:coreexam/view/displaydetails/displayscreen.dart';
import 'package:coreexam/view/homescreen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/data':(context) => Data_screen(),
        '/display':(context) => Displayscreen(),
      },
    );
  }
}

