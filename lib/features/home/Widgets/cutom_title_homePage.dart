import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_place/core/resourses/String_manager.dart';

import '../../../core/resourses/font_size.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(stringManager.S4,
      style:TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: Fontsize.font30.sp,
      ),
    );

  }
}
