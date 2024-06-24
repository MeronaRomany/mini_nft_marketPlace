import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:market_place/core/resourses/String_manager.dart';
import 'package:market_place/core/resourses/assets_manager.dart';
import 'package:market_place/core/resourses/font_size.dart';
import 'package:market_place/core/resourses/size_manager.dart';
import 'package:market_place/features/stats/widgets/custom_sub_state.dart';


import '../widgets/custom_catagories_sub_state.dart';
import '../widgets/custom_sub_state.dart';
import '../widgets/custom_table_state.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff211134) ,
      body:SafeArea(
        child: Column(
          children: [
              SizedBox(
                height: Hight.H50.h,
                 child: Text(stringManager.state,
                  style: TextStyle(fontSize: Fontsize.font30.sp,
                      fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
               ),

            Expanded(
              child: ListView(
                children: [
                  Column(

                    children: [
              Padding(
              padding:  EdgeInsets.symmetric(vertical: 18.r),
              child: Container(
                height: 50.h,
                width: weight.Winfinity.w,
                decoration: BoxDecoration(

                  border: Border(
                    bottom: BorderSide(
                      width: 1.w,
                      color: Colors.white.withOpacity(0.2.sp),
                    ),
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 18.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomSubState(
                        icon: Icons.stacked_bar_chart,
                        title: stringManager.Ranking,
                        color: Colors.white,
                        activity: 1,
                      ),
                      CustomSubState(
                        icon: Icons.stacked_line_chart,
                        title: stringManager.Activity,
                        color: Colors.white,
                        activity: 0,
                      ),

                    ],
                  ),
                ),
              ),
            ),







                      Padding(
                      padding:  EdgeInsets.symmetric(vertical: 16.0.r),
                      child: Container(
                        width:  MediaQuery.sizeOf(context).width,
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomCatagoriesSubState(icon: Icons.reorder, title: stringManager.catagories, arrow: Icons.keyboard_arrow_down),
                            CustomCatagoriesSubState(icon: Icons.image, title: stringManager.cheains, arrow:Icons.keyboard_arrow_down ),
                          ],
                        ),
                      ),
          ),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50.0,sigmaY: 50.0),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [Color(0xff97A9F6).withOpacity(0.12),Color(0xff211134).withOpacity(0.2),]
                              ),
                            ),
                            height: 600.h,
                            // color:Color(0xff211134).withOpacity(0.3),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.0.r),
                              child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                 CustomTableState(image: assetsManager.image6, title1: stringManager.Azumi, rate: stringManager.N3_99, numbar:stringManager.N1, title2: stringManager.N200005_02,color: Colors.green,),
                                  CustomTableState(image: assetsManager.image7, title1: stringManager.Ape_Club, rate: stringManager.N30_99, numbar:stringManager.N2, title2: stringManager.N200005_02,color: Colors.green,),
                                  CustomTableState(image: assetsManager.image9, title1: stringManager.Hape_prime, rate: stringManager.N6_56, numbar:stringManager.N3, title2: stringManager.N200005_02,color: Colors.green,),
                                  CustomTableState(image: assetsManager.image5, title1: stringManager.Metaverse, rate: stringManager.N3_99, numbar:stringManager.N5, title2: stringManager.N200005_02,color: Colors.green,),
                                  CustomTableState(image: assetsManager.image6, title1: stringManager.Mountaion, rate: stringManager.N40, numbar:stringManager.N6, title2: stringManager.N200005_02,color: Colors.red,),
                                  CustomTableState(image: assetsManager.image7, title1: stringManager.Mutan_Ape, rate: stringManager.N3_99, numbar:stringManager.N7, title2: stringManager.N200005_02,color: Colors.green),
                                  CustomTableState(image: assetsManager.image8, title1: stringManager.Mutant, rate: stringManager.N6_56, numbar:stringManager.N8, title2: stringManager.N200005_02,color: Colors.red),
                                  CustomTableState(image: assetsManager.image9, title1: stringManager.The_SandBox, rate: stringManager.N50, numbar:stringManager.N9, title2: stringManager.N200005_02,color: Colors.green),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),

    );

  }
}
