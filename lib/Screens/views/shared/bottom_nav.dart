import 'package:flutter/material.dart';

class Buttom_navgationbar extends StatelessWidget {
  const Buttom_navgationbar({
    super.key, this.onTap, required IconData Icons,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){},
    child: const SizedBox(
      height: 36,
      width: 36,  

      child: Icon(Icons.home, color: Colors.white,),
    ),
    );
  }
}