import 'package:flutter/material.dart';
import 'package:tab_bar/Screens/views/Users/cartpage.dart';
import 'package:tab_bar/Screens/views/shared/appstyle.dart';
import 'package:tab_bar/Screens/views/shared/bottom_nav.dart';
import 'package:tab_bar/main.dart';
import 'profile.dart';
import 'homepage.dart';
import 'searchpage.dart';

class mainscreen extends StatelessWidget {
   mainscreen({super.key});
  List<Widget> pageList =const[
    CartPage(),
    Homepage(),
    ProfilePage(),
    SearchPage(),
    MyApp(),

  ];

  @override
  Widget build(BuildContext context) {
    int pageindex = 0;
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),

      body: pageList[pageindex],

      bottomNavigationBar: SafeArea(child: Padding(padding: EdgeInsets.all(16),
      child: Container(padding: EdgeInsets.all(16),margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(16)
      )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Buttom_navgationbar(
          onTap: () {},Icons:Icons.home,
        ),
        Buttom_navgationbar(
          onTap: () {},Icons:Icons.search,
        ),
        Buttom_navgationbar(
          onTap: () {},Icons:Icons.add,
        ),
        Buttom_navgationbar(
          onTap: () {},Icons:Icons.shopping_cart,
        ),
        Buttom_navgationbar(  
          onTap: () {},Icons:Icons.person,
        ),
        
        ],
      ),
      )
      ),
      ),
      
    );
  }
}

