import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/String_manager.dart';

import 'package:market_place/core/resourses/size_manager.dart';

import '../../../core/resourses/font_size.dart';
import '../../../core/resourses/route_manager.dart';

class CustomComponentOBoarding extends StatelessWidget {
  const CustomComponentOBoarding({super.key});

  @override
  Widget build(BuildContext context) {


    return  Padding(
      padding:  EdgeInsets.all(PaddingSize.p16_0.r),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: Hight.H50.h,),
          Text(stringManager.S_nft,style:
          TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Fontsize.font35.sp,
            color: Colors.white,
          ),),

          Spacer(),

          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: Fontsize.BackdropFilterFont,
                sigmaY:Fontsize.BackdropFilterFont,
              ),
              child: Container(
               width: weight.Winfinity,

                child: Padding(
                  padding:  EdgeInsets.only(
                    top:PaddingSize.p27_0.r,bottom: PaddingSize.p27_0.r,
                  ),
                  child: Column(
                    children: [
                      Text(stringManager.S1,style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.font20.sp,
                        color: Colors.white,
                      ),),
                      SizedBox(height: Hight.H10.h,),

                      Text(stringManager.S2,style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.font15.sp,
                        color: Colors.white.withOpacity(OpacitySize.Opacity0_6),
                      ),),
                      SizedBox(height: Hight.H27.h,),

                      ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX:Fontsize.BackdropFilterFont,
                            sigmaY: Fontsize.BackdropFilterFont,),
                          child: Container(
                            alignment: Alignment.center,
                            width: weight.W200.w,
                            height: Hight.H40.h,
                            child: TextButton(
                              onPressed:(){
                                Navigator.pushNamed(context,RouteName.Home_Page);
                              },
                              child:Text(stringManager.S3),style:
                            TextButton.styleFrom(
                             textStyle: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize:Fontsize.font20.sp,
                             ),
                                foregroundColor: Colors.white),

                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff640D6B).withOpacity(OpacitySize.Opacity0_6),
                              border: Border.all(
                                color: Colors.white.withOpacity(OpacitySize.Opacity0_2),
                                width: weight.W1_0,
                              ),
                              borderRadius: BorderRadius.circular(borderRadius.R27.r),
                            ),
                          ),
                            ),
                        ),


                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(Fontsize.font1.sp),

                  borderRadius: BorderRadius.circular(borderRadius.R27.r ),
                ),
              ),
            ),
          ),
          SizedBox(height: Fontsize.font30.h,),
        ],
      ),
    );

  }
}
