import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tab_bar/Screens/views/shared/appstyle.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:tab_bar/Screens/views/shared/product_shared.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
      backgroundColor: const Color(0xFFE2E2E2);
    return  Scaffold(
      body: SizedBox(height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            height: MediaQuery.of(context).size.height*0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/top_image.png"),fit: BoxFit.fill )
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
            child: Container(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                padding: const EdgeInsets.only(left: 12),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column
                  (
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.405,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ProductCard(price: '\$ 200',
                            category: 'Men Shoes',
                            id: '1',
                            name: 'Adidas NMD RUNNER',
                            image: "https://d326fntlu7tb1e.cloudfront.net/uploads/58282ea3-b815-4d26-9f4f-382aa62f67cf-HP5404_a1.webp",
                            );
                          }
                          ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 20, 12, 20 ),
                            child: Row(
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
                          ),
                          
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.2,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var ImageUrl;
                            return Padding( 
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                  boxShadow: 
                                  [
                                    BoxShadow (
                                    color: Colors.black38,
                                    spreadRadius: 1,
                                    blurRadius: 0.8,
                                    offset: Offset(0, 1)
                                    
                                    )]
                                ),
                                height: MediaQuery.of(context).size.height*0.12,
                                width: MediaQuery.of(context).size.width*0.28 , 
                                child: CachedNetworkImage(
                                imageUrl: "https://d326fntlu7tb1e.cloudfront.net/uploads/58282ea3-b815-4d26-9f4f-382aa62f67cf-HP5404_a1.webp",
),
                               
                              ),
                            );
                          }
                          ),
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
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
}