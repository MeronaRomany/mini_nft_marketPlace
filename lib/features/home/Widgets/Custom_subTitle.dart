import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resourses/font_size.dart';

class CustomSubTitle extends StatelessWidget {
  final String title;
  const CustomSubTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style:TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: Fontsize.font20.sp,));
  }
}
