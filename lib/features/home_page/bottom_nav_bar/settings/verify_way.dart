
import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/core/widgets/verity_way_card.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class VerityWay extends StatelessWidget {
  const VerityWay({Key? key}) : super(key: key);
  static String name = "verity_way_screen";
  static String path = "/verity_way_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColorScheme.primary,
      appBar: AppBar(
        elevation: 3,
        title: Text("طريقة التفعيل",style: Theme.of(context).textTheme.titleMedium),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: SvgPicture.asset(Images.appBarIcon)),
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Align(
          alignment: Alignment.topRight,
          child: Column(
            children: [
             Align(
               alignment: Alignment.topRight,
                 child: Container(
                   margin: EdgeInsets.only(right: 20.w),
                     child: Text("أول تفعيل لك ؟ ",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),))),
              SizedBox(height: 13.h,),
              Align(
                  alignment: Alignment.topRight,
                  child: Text("اتبع الخطوات الاتية ",style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),)),
              SizedBox(height: 20.h,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                VerityWayCard(text: 'هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل ,',),
                  Positioned(
                      top: -86,
                      left:45,
                      child: SvgPicture.asset(Images.questionBoyWayVerity,height: 100.h,width: 100.w,))
                ],
              ),
              SizedBox(height: 35.h,),
              Align(
                  alignment: Alignment.topRight,
                  child: Text("هل تريد تفعيل كود أو مادة جديدة ؟ ",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white,fontSize: 20),)),
              SizedBox(height: 13.h,),
              Align(
                  alignment: Alignment.topRight,
                  child: Text("اتبع الخطوات الاتية ",style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.white),)),
              SizedBox(height: 13.h,),
              VerityWayCard(text: 'هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل , هنا يتم شرح طريقة التفعيل ,',),
            ],
          ),
        ),
      ),
    );
  }
}
