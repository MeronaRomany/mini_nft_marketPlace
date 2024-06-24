import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/String_manager.dart';
import 'package:market_place/core/resourses/assets_manager.dart';

import 'package:market_place/core/resourses/size_manager.dart';

import '../../../core/resourses/font_size.dart';

class CustomCategories extends StatelessWidget {
 final  String image;
  final String title;
  const CustomCategories({super.key,required this.image, required this.title });

  @override
  Widget build(BuildContext context) {


    return  Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius.R27.r),
          child: Image.asset(image,
            fit: BoxFit.cover,
            width: weight.W252.w,
            height: 210.h,
          ),

        ),

        Positioned(
          bottom: PositionSize.Position0_14,
          child: Container(
            width: weight.W252.w,
            height: Hight.H40.h,

            alignment: Alignment.bottomCenter,
            child: Text(title,style: TextStyle(
              fontSize: Fontsize.font30.sp,
              fontWeight: FontWeight.bold,

            ),),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0.0),
                  topRight:  Radius.circular(0.0),
                  bottomRight:  Radius.circular(borderRadius.R27),
                  bottomLeft:  Radius.circular(borderRadius.R27),
                ),
                gradient: LinearGradient(
                  begin  : Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff000000).withOpacity(OpacitySize.Opacity0_0),
                    Color(0xff000000).withOpacity(OpacitySize.Opacity0_4),
                  ],
                )
            ),


          ),
        ),
      ],);


  }
}
