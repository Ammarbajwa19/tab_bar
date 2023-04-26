import 'package:flutter/material.dart';
import 'package:tab_bar/Screens/views/shared/appstyle.dart';
import 'package:antdesign_icons/antdesign_icons.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            height: MediaQuery.of(context).size.height*0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/intop1.png"),fit: BoxFit.fill )
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 8, bottom: 15),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Athletic Shoes", style: appstylewithHt(40, Colors.amber, FontWeight.bold, 1.2),),
                  Text("Collection", style: appstylewithHt(40, Colors.amber, FontWeight.bold, 1.2)),
                TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.amber,
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.amber,
            labelStyle: appstyle(24, Colors.amber, FontWeight.bold),
            unselectedLabelColor: Colors.grey.withOpacity(0.3),
            tabs:
          const [
            Tab(text: "Men Shoes"),
            Tab(text: "Women Shoes"),
            Tab(text: "Kids Shoes"),
          ]),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.265),
            child: TabBarView(
              controller: _tabController,
              children: [
                Column
              (
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.405,
                    color: Colors.amber,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Update", style: appstyle(24, Colors.black, FontWeight.bold),),
                       Row(
                        children: [
                          Text('Show_All',style: appstyle(22, Colors.black, FontWeight.bold),),
                          Icon(AntIcons.caretRightFilled , size: 20,)
                        ],
                      )
                        ],
                      ),
                      
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.10,
                    color: Colors.amber,
                  ),
                   
                ],),
                Column
              (
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.405,
                    color: Colors.blue,
                  )
                ],),
                Column
              (
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.405,
                    color: Colors.green,
                  )
                ],)
                ]
                ),
          )
        ],
      ),
      ),
    );
  }
}