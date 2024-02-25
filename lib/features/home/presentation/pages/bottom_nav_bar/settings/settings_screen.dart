import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/core/widgets/profile_card.dart';

import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'about.dart';
import 'contact_us.dart';
import 'sell_centers.dart';
import 'verify_code.dart';
import 'verify_way.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static String name = "settings_screen";
  static String path = "/settings_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,

        backgroundColor:lightColorScheme.onPrimary,
        leading : Transform.scale(
            scale: 2.3,
            child: Image.asset(Images.logo2)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("مرحبا_عمر",style:Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16) ,),
            Text("بكالوربا_علمي",style:Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 13) ,),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: SvgPicture.asset(Images.appBarIcon)),
          ),

        ],

      ),
        body: Column(children: [
      SizedBox(
        height: 120.h,
      ),
      Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -78,
              left:60,
              child: SvgPicture.asset(
                Images.manSettings,
                height: 92.h,
                width: 54.w,
              )),
          ProfileCard(
              image: Images.profile,
              text: "تفعيل الكود",
              height: 84.h,
              heightIcon: 41, onTap:(){context.pushNamed(VerityCode.name);},),
        ],
      ),
          SizedBox(height: 23.h,),
          ProfileCard(
              image: Images.profile,
              text: "طريقة التفعيل ",
              height: 84.h,
              heightIcon: 41,
              onTap:(){context.pushNamed(VerityWay.name);},),
          SizedBox(height: 20.h,),
          ProfileCard(
              image: Images.profile,
              text: "مراكز البيع ",
              height: 84.h,
              heightIcon: 41,
            onTap:(){context.pushNamed(SellCenters.name);},),
          SizedBox(height: 23.h,),
          ProfileCard(
              image: Images.profile,
              text: "حول التطبيق ",
              height: 84.h,
              heightIcon: 41,
            onTap:(){context.pushNamed(About.name);},),
          SizedBox(height: 23.h,),
          ProfileCard(
              image: Images.profile,
              text: "تواصل معنا",
              height: 84.h,
              heightIcon: 41,
            onTap:(){context.pushNamed(ContactUs.name);},),

    ]));
  }
}
