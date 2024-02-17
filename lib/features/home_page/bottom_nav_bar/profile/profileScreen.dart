
import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/core/widgets/profile_card.dart';
import 'package:atmtha_mobile/features/home_page/bottom_nav_bar/profile/profile_home_page/favourite.dart';
import 'package:atmtha_mobile/features/home_page/bottom_nav_bar/profile/profile_home_page/my_codes.dart';
import 'package:atmtha_mobile/features/home_page/bottom_nav_bar/profile/profile_home_page/my_profile.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String name = "profile_screen";
  static String path = "/profile_screen";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor:lightColorScheme.onPrimary,
        leading : Transform.scale(
            scale: 2.3,
            child: Image.asset(Images.logo2)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("مرحبا_عمر",style:Theme.of(context).textTheme.titleMedium ,),
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
      backgroundColor: lightColorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Images.boyprofile,width: 164.w,height: 180.h,),
           SizedBox(height: 12.h,),
          ProfileCard(image:Images.profile , text:" ملفي الشخصي ", height:82, heightIcon: 41, onTap: (){context.pushNamed(MyProfile.name);} , ),
            SizedBox(height: 27.h,),
             ProfileCard(image:Images.mycodeProfile, text: " أكوادي", height: 82,heightIcon: 41, onTap:() {context.pushNamed(MyCodes.name);},),
            SizedBox(height: 27.h,),
             ProfileCard(image: Images.favouriteProfile, text:" المفضلة" ,height: 82,heightIcon: 41,onTap: (){context.pushNamed(Favourite.name);},),
           SizedBox(height: 70.h,),
            ProfileCard(image:Images.logOutProfile, text:"تسجيل الخروج", height: 60,heightIcon: 22,onTap:(){} ,),



          ],
        ),
      )
    );
  }
}