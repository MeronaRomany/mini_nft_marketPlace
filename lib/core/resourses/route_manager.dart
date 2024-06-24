


import 'package:flutter/material.dart';
import 'package:market_place/features/home_page.dart';
import 'package:market_place/features/stats/screens/stats_page.dart';

import '../../features/home/Screens/NFT_page.dart';
import '../../features/on_boarding/Screens/on_boarding_page.dart';

class RouteManager{
  static  Map<String, WidgetBuilder> route={
    RouteName.OnBoarding:(context) => OnBoardingPage(),
    RouteName.Home_Page:(context) =>  HomePage(),
    RouteName.NFT_Page:(context) => NFTPage(),
    RouteName.state_Page:(context) => StatePage(),
  };
}

class RouteName{
  static const String OnBoarding= 'OnBoardingPage';
  static const String Home_Page= "Home_page";
  static const String NFT_Page= "Nftpage";
  static const String state_Page= "StatePage";


}