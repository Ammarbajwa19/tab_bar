import 'package:provider/provider.dart';
import 'package:tab_bar/Screens/views/shared/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/controler/mainscreen_provider.dart';
class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child){
        return SafeArea(child: Padding(padding: EdgeInsets.all(16),
    child: Container(padding: EdgeInsets.all(16),margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(16)
    )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Buttom_navgationbar(
        onTap: () {
          mainScreenNotifier.pageIndex = 0;
        },icon:mainScreenNotifier.pageIndex==0
        ?Icons.home:Icons.home_outlined,
      ),
      Buttom_navgationbar(
        onTap: () {
          mainScreenNotifier.pageIndex = 1;
        },icon:mainScreenNotifier.pageIndex==1
        ?Icons.search:Icons.search,
      ),
      Buttom_navgationbar(
        onTap: () {
          mainScreenNotifier.pageIndex = 2;
        },icon:mainScreenNotifier.pageIndex==2?
        Icons.add:Icons.add_circle_outline,
      ),
      Buttom_navgationbar(
        onTap: () {
          mainScreenNotifier.pageIndex = 3;
        },icon:mainScreenNotifier.pageIndex==3?
        Icons.shopping_cart: Icons.shape_line_outlined,
      ),
      Buttom_navgationbar(  
        onTap: () {
          mainScreenNotifier.pageIndex = 4;
        },icon:mainScreenNotifier.pageIndex==4?
        Icons.person:Icons.person_outline,
      ),
      
      ],
    ),
    )
    ),
    );
      },
  );
  }
}