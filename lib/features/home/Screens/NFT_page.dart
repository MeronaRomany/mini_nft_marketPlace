import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:market_place/core/resourses/constant.dart';

import 'package:market_place/features/home/Widgets/custom_categories_home.dart';
import 'package:market_place/features/home/Widgets/custom_trending_collection.dart';
import 'package:market_place/core/resourses/String_manager.dart';


import '../../../core/resourses/size_manager.dart';
import '../Widgets/Custom_subTitle.dart';

import '../Widgets/custom_top_sellor.dart';


class NFTPage extends StatelessWidget {
  const NFTPage({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: SafeArea(
       child: Padding(
         padding:  EdgeInsets.all(12.0.r),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,

           children: [

           SizedBox(
             height: 167.h,
             child: ListView.separated(
               scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) =>CustomCategories(
                   image:constants.catogerieList[index].image ,
                   title: constants.catogerieList[index].title,
                 ),
                 separatorBuilder: (context, index) => SizedBox(width: weight.W10),
                 itemCount: 3),
           ),

            SizedBox(height: Hight.H10.h,) ,

            Container(

              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: CustomSubTitle(title: stringManager.STrending,)),

                  SizedBox(height: Hight.H10.h,),
                  SizedBox(
                    height: 220.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder:(context, index) =>  CustomTrending(
                            image: constants.TrendingList[index].image, title: constants.TrendingList[index].title),
                        separatorBuilder: (context, index) => SizedBox(width: weight.W10.h) ,
                        itemCount: 3),
                  ),
                ],
              ),
            ),
             SizedBox(height: Hight.H10.h,),

             Container(

               child: Column(
                 children: [
                   Align(
                       alignment: Alignment.topLeft,
                       child: CustomSubTitle(title: stringManager.Stop,)),

                   SizedBox(height: Hight.H10.h,),
                   SizedBox(
                     height: 270.h,
                     child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                         itemBuilder:(context, index) =>  CustomTopSellor(
                             image: constants.TopSellorList[index].image, title: constants.TopSellorList[index].title),
                         separatorBuilder: (context, index) => SizedBox(width: weight.W10) ,
                         itemCount: 3),
                   ),
                 ],
               ),
             ),


         ],),
       ),
          ),
    );
  }
}
