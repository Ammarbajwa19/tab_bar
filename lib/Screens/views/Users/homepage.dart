import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 45, 0, 0),
            height: MediaQuery.of(context).size.height*0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("lib/assets/images/intop1.png"),fit: BoxFit.fill )
            ),
          )
        ],
      ),
      ),
    );
  }
}