import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/String_manager.dart';
import 'package:market_place/core/resourses/size_manager.dart';

import '../../../core/resourses/font_size.dart';

class CustomCatagoriesSubState extends StatelessWidget {
  final String title;
  final IconData icon;
  final IconData arrow;

  const CustomCatagoriesSubState ({super.key,required this.icon,required this.title,required this.arrow});


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius.R27),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX:35.0,
            sigmaY: 35.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.11),
            borderRadius: BorderRadius.circular(30.r),
            border:Border.all(color: Colors.grey.withOpacity(0.1))

          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon,color: Colors.grey,),
              Text(title, style: TextStyle(fontSize: 17.sp,
                color: Colors.white,
              ),),
              IconButton(onPressed: (){}, icon: Icon(arrow,color: Colors.white,)),
            ],),
        ),
      ),
    );
  }
}
