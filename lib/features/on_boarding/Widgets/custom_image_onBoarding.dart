import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/assets_manager.dart';
import 'package:market_place/core/resourses/size_manager.dart';

import '../../../core/resourses/font_size.dart';

class customImageOnBoarding extends StatelessWidget {
  const customImageOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return   Image.asset(assetsManager.imageOnBoarding,
                     width:weight.Winfinity.w,
                     height: Hight.Hinfinity.h,
                     fit: BoxFit.cover,);
  }
}
