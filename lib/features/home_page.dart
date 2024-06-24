import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:market_place/features/home/Screens/NFT_page.dart';
import 'package:market_place/features/stats/screens/stats_page.dart';
import '../core/resourses/route_manager.dart';
import 'home/Widgets/custom_navigation_bar.dart';
import 'home/Widgets/cutom_title_homePage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int index=0;

     List<Widget> kind_page=[NFTPage(),StatePage()];

  // const HomePage({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xff211134),
      appBar: index==0?AppBar(
        backgroundColor:Color(0xff211134) ,
        title:  CustomTitleHomePage(),
        centerTitle: true,
        elevation: 0,
      ):null,
      bottomNavigationBar: CustomNavigationBar(
        onPressedHome: (){
          index=0;
          setState(() {
          });
        },

        onPressedStats: (){
          index=1;
          setState(() {
          });

        },),

      body:kind_page[index],

    );
  }
}
