
import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditUserProfile extends StatelessWidget {
  const EditUserProfile({Key? key}) : super(key: key);
  static String name = "edit_user_profile_screen";
  static String path = "/edit_user_profile_screen";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset(Images.test)),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "الاسم",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
        SizedBox(height: 7.h,),
        Container(
          height: 68.h,
          width: 392.w,
          decoration: BoxDecoration(
            color: lightColorScheme.onPrimary,
            border: Border.all(
                color: lightColorScheme.secondaryContainer,
                width: 1.5),
            borderRadius: BorderRadius.circular(15),
          ),
          transform: Matrix4.skewX(-.5 / 4),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Align(
              alignment: Alignment.centerRight,
              child:TextFormField(
                decoration: const InputDecoration(border: InputBorder.none),
              )
            ),
          ),
        ),
            SizedBox( height: 13,),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "الجنس",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 7.h,),
            Container(
              height: 68.h,
              width: 392.w,
              decoration: BoxDecoration(
                color: lightColorScheme.onPrimary,
                border: Border.all(
                    color: lightColorScheme.secondaryContainer,
                    width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
              transform: Matrix4.skewX(-.5 / 4),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child:TextFormField(
                      decoration: const InputDecoration(border: InputBorder.none),
                    )
                ),
              ),
            ),
            SizedBox( height: 13,),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "البريد الالكتروني4",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 7.h,),
            Container(
              height: 68.h,
              width: 392.w,
              decoration: BoxDecoration(
                color: lightColorScheme.onPrimary,
                border: Border.all(
                    color: lightColorScheme.secondaryContainer,
                    width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
              transform: Matrix4.skewX(-.5 / 4),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child:TextFormField(
                      decoration: const InputDecoration(border: InputBorder.none),
                    )
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
