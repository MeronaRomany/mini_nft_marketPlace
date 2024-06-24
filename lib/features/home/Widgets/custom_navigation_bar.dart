import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/size_manager.dart';
import '../../../core/resourses/font_size.dart';

class CustomNavigationBar extends StatelessWidget {
  final VoidCallback onPressedHome;
  final VoidCallback onPressedStats;
  const CustomNavigationBar({super.key, required this.onPressedHome,required this.onPressedStats});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 100.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular( borderRadius.R27.r,),
                topRight:  Radius.circular( borderRadius.R27.r,),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX:30 ,
                    sigmaY: 30),
                child: Container(
                  height: 70.h,
                  color:Colors.white.withOpacity(0.1),
                  width: MediaQuery.sizeOf(context).width,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed:onPressedHome ,
                          icon: Icon(Icons.home)),
                      IconButton(
                          onPressed: onPressedStats,
                          icon: Icon(Icons.stacked_bar_chart,size: Fontsize.font35,)),
                      Icon(Icons.search,size: Fontsize.font35,),

                      Icon(Icons.person,size: Fontsize.font35,),
                    ],
                  ),

                ),
              ),
            ),
          ),
          Positioned(
           top: 0,
            child: Container(
              height: 60.h,
              width: 50.w,
              child: Icon(Icons.add,size: Fontsize.font35,) ,
              decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.5),
                  shape: StarBorder.polygon(
                    sides: 6,
                    pointRounding: 0.5,
                  )
              ),
            ),
          ),




        ],
      ),
    );


  }
}
