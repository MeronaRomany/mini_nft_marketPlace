

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/route_manager.dart';
import 'package:market_place/features/on_boarding/Screens/on_boarding_page.dart';
import 'package:market_place/features/stats/screens/stats_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        routes:RouteManager.route,
        home:OnBoardingPage(),

      ),
    );
  }
}
