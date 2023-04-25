
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:tab_bar/Screens/views/Users/mainscreen.dart';
import 'package:tab_bar/controler/mainscreen_provider.dart';

void main() {
  runApp(
    MultiProvider
    (providers : [
    ChangeNotifierProvider(create: (context) => MainScreenNotifier())
          ],
      child: const MyApp()));
  
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