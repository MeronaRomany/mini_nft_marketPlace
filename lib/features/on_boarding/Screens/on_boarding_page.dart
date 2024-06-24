
import 'dart:ui';

import 'package:flutter/material.dart';

import '../Widgets/custom_component_onBoarding.dart';
import '../Widgets/custom_image_onBoarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211134),
        body:
           SafeArea(
             child: Stack(

              children: [
                customImageOnBoarding(),
                CustomComponentOBoarding(),
              ],
          ),
           ),
    );
  }
}
