import 'package:flutter/material.dart';
import 'package:tab_bar/Screens/views/shared/appstyle.dart';
import 'package:tab_bar/Screens/views/shared/bottom_nav.dart';

class mainscreen extends StatelessWidget {
  const mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      bottomNavigationBar: SafeArea(child: Padding(padding: EdgeInsets.all(16),
      child: Container(padding: EdgeInsets.all(16),margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(16)
      )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
        Buttom_navgationbar(),
        Buttom_navgationbar(),
        Buttom_navgationbar(),
        Buttom_navgationbar(),
        Buttom_navgationbar(),
        ],
      ),
      )
      ),
      ),
      body: Center(
        child: Text("MainScreen", style: appstyle(40, Colors.black, FontWeight.bold))
      ),
    );
  }
}

