import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resourses/font_size.dart';
import '../../../core/resourses/size_manager.dart';

class CustomSubState extends StatelessWidget {
  final String title;
  final IconData icon;
   final Color color;
  final int activity;
  const CustomSubState({super.key,required this.icon,required this.title,required this.color,required this.activity});



  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        Row(
          children: [
          Icon(icon,color: Colors.grey,),
          Text(title,
            style:  TextStyle(fontSize: Fontsize.font20.sp,
                fontWeight: FontWeight.bold,
            color: color),),
        ],),
        SizedBox(height: 25.h,),
     if (activity==1)
    Container(
        width: 106.w,
       decoration: BoxDecoration(
       color: Color(0xff976dff),
       borderRadius: BorderRadius.only(
       topRight: Radius.circular(borderRadius.R10.r),
       topLeft: Radius.circular(borderRadius.R10.r),
    ),
      boxShadow: [
         BoxShadow(
            color: Color(0xff976dff),
            blurRadius:2.5,
            spreadRadius:2.5 ,


    ),
    ],
    ),
    ),

      ],
    );
  }
}
