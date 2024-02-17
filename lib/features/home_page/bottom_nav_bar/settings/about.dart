
import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  static String name = "about";
  static String path = "/about_screen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.primary,
      appBar: AppBar(
        elevation: 3,
            title: Text("حول التطبيق",style: Theme.of(context).textTheme.titleMedium),
            actions: [
            GestureDetector(
            onTap: (){},
        child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: SvgPicture.asset(Images.appBarIcon)),
      ),
     ] ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(height: 150.h,),
          Center(child: Text("تطبيق أتمتها",style: Theme.of(context).textTheme.titleLarge?.copyWith(color: lightColorScheme.onPrimary),)),
          SizedBox(height: 50.h,),
         Image.asset(Images.logo2,color: lightColorScheme.onPrimary,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 63.h,
                width: 63.w,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lightColorScheme.onPrimary,
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Image.asset(Images.facebook),
                ),
              ),
             SizedBox(width:20.w,),
              Container(
                height: 63.h,
                width: 63.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: lightColorScheme.onPrimary,
                ),
                child: Padding(
                    padding:const  EdgeInsets.all(13 ),
                    child: SvgPicture.asset(Images.telegram,)),
              ),
            ],
          )
        ],
      )
    );
  }
}
