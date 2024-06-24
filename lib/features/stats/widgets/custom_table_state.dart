import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/font_size.dart';
import 'package:market_place/core/resourses/size_manager.dart';

class CustomTableState extends StatelessWidget {
  final String numbar;
  final String image;
 final String title1;
  final String title2;
  final String rate;
  final Color color;
  const CustomTableState({super.key,required this.image,required this.title1,
    required this.rate,required this.numbar,required this.title2,required this.color});


  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(numbar,style: TextStyle(
        color: Colors.grey,
      ),),
      SizedBox(width: 10.h),
      ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius.R10.r),
        child: Image.asset(image,
       ),
      ),
      SizedBox(width: 20.h,),
      Column(children: [
        Text(title1,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: Fontsize.font18.sp,
          color: Colors.white,
        ),),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text('view info',style: TextStyle(
    color: Colors.grey,
    ),),
        ),
      ],),
        Expanded(child: SizedBox(width: 100.w,)),
      Column(children: [
        Row(
          children: [
            Icon(Icons.safety_check_outlined,color: Colors.grey,),
            SizedBox(width: weight.W5.h,),
            Text(title2,style: TextStyle(
              color: Colors.white,
            ),),
          ],
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(rate,style: TextStyle(
          color: color,
    ),),
        ),
      ],)

    ],) ;
  }
}
