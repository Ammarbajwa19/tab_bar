
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_bar/Screens/views/Users/cartpage.dart';
import 'package:tab_bar/Screens/views/shared/appstyle.dart';
import 'package:tab_bar/Screens/views/shared/bottom_nav.dart';
import 'package:tab_bar/controler/mainscreen_provider.dart';
import 'package:tab_bar/main.dart';
import '../shared/buttom_NavBar.dart';
import 'profile.dart';
import 'homepage.dart';
import 'searchpage.dart';

class Mainscreen extends StatelessWidget {
   Mainscreen({super.key});
  List<Widget> pageList =const[
    Homepage(),
    SearchPage(),
    Homepage(),
    CartPage(),
    ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child){
        return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),

      body: pageList[mainScreenNotifier.pageIndex],

      bottomNavigationBar:const ButtomNavBar(),
    );
  }
    );
    }
  }

