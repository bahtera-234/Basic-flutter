import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/next.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.tealAccent,
        ),
        home: Home(),
      
     
    );
  }
}
