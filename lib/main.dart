
import 'package:flutter/material.dart';
import 'package:tab_bar/Screens/views/Users/mainscreen.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping_App",
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Mainscreen(),
    );
  }
}