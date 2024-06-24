import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/constant.dart';
import 'package:market_place/core/resourses/size_manager.dart';
import 'package:market_place/features/home/Widgets/custom_categories_home.dart';
import 'package:market_place/features/home/Widgets/custom_trending_collection.dart';
import 'package:market_place/core/resourses/String_manager.dart';

import '../../../core/resourses/font_size.dart';
import '../Widgets/Custom_subTitle.dart';
import '../Widgets/cutom_title_homePage.dart';

class CustomTopSellor extends StatelessWidget {
  final  String image;
  final String title;
  const CustomTopSellor({super.key,required this.image, required this.title });

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(

      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: Fontsize.BackdropFilterFont,
          sigmaY: Fontsize.BackdropFilterFont,
        ),
        child: Container(

          height: 175.h,
          width: 175.w,
          child: Column(
            children: [
            SizedBox(height: Hight.H20.h),
            ClipRRect(
              child: Image.asset(image),
              borderRadius: BorderRadius.circular(borderRadius.R27),
            ),
            SizedBox(height: Hight.H10.h,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.0.r),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('data',style: TextStyle(
                  fontSize: Fontsize.font18.sp,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.0.sp),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('data',style: TextStyle(
                    fontSize: Fontsize.font18.sp,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),

            Padding(
              padding:  EdgeInsets.all(5.0.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,style:TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Fontsize.font18.sp,)),

                  Row(
                    children: [
                      Icon(Icons.favorite,
                        color: Colors.red,
                      ),
                      Text(stringManager.S200,style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontsize.font18.sp,)),
                    ],
                  ),
                ],
              ),
            ),

          ],),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(borderRadius.R27.r),
          ),

        ),
      ),
    );
  }
}
