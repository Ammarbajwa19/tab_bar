import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/Screens/views/shared/appstyle.dart';

class searchpage extends StatefulWidget {
  const searchpage({super.key});

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("This is home", style: appstyle(40, Colors.amber, FontWeight.bold),),
    ),
    );
  }
}