import 'package:flutter/material.dart';
AppBar buildAppbar(){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
      bottom:PreferredSize(child: Container(height: 2.0, 
      color: Colors.amber.withOpacity(0.9),), preferredSize: Size.fromHeight(1.0) ),
    title: Text('Log_In',
    style: TextStyle(
    color: Colors.amber,
    fontSize: 24,
    fontWeight: FontWeight.normal,
     ),
     ),
     centerTitle: true,
  );
}