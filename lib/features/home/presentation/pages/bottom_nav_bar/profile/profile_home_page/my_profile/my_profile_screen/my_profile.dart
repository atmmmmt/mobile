import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/core/widgets/card_display_my_information.dart';
import 'package:atmtha_mobile/core/widgets/profile_card.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../edit_user_profile.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);
  static String name = "my_profile";
  static String path = "/my_profile_screen";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
            appBar: AppBar(
              elevation: 3.5,
              title: Text("ملفي الشخصي ",
                  style: Theme.of(context).textTheme.titleMedium),
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: SvgPicture.asset(Images.appBarIcon)),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(Images.test)),
                 SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "الاسم",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
               CardDisplayMyInformation(text: 'عمر المحمد',),
               SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    "الجنس",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  CardDisplayMyInformation(text: 'ذكر',),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    "البريد الالكتروني",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  CardDisplayMyInformation(text: 'omar@gmail.com',),
                  SizedBox(
                    height: 50.h,
                  ),
              GestureDetector(
                onTap:(){context.pushNamed(EditUserProfile.name);},
                child: Center(
                  child: Container(
                    width: 380.w,
                    height:54.h,
                    transform: Matrix4.skewX(-.5/4),
                    decoration: BoxDecoration(
                      color: lightColorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: lightColorScheme.secondaryContainer,width: 1.5),
                      boxShadow:[
                        BoxShadow(
                          color:lightColorScheme.secondaryContainer,
                          offset:const Offset(0,2),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 35,),
                        SvgPicture.asset(Images.editProfile,color: lightColorScheme.primary,width: 41.w,height: 25.h,),
                        SizedBox(width: 30,),
                        Text("تعديل الملف الشخصي ",style: Theme.of(context).textTheme.titleSmall,),
                        Spacer(),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp,color: lightColorScheme.primary,size: 23,))
                      ],
                    ),
                  ),
                ),
              ),



                ],
              ),
            )));
  }
}
