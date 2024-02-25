import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/choose_major.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../resources/resources.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);
  static String name = "congrats_screen";
  static String path = "/congrats_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
          Container(
              margin: REdgeInsets.only(left: 200),
              child: SvgPicture.asset(
                Images.congrats,
                height: 300.h,
                width: 290.w,
              )),
          SizedBox(height: 20.h,),
          Text("تهانينا....يمكنك الان بالبدأ بحل الكثير من",style: Theme.of(context).textTheme.bodyLarge,),
          Text("الأسئلة جميع المواد...",style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(height: 20.h,),
          Center(
            child:SvgPicture.asset(
    Images.congratsIllustration,
    height: 187.h,
    width: 208.w,
    )),
          SizedBox(height: 20.h,),
          MainButton(text: "استمرار", onPressed: (){
            context.pushNamed(ChooseMajor.name);
          }),
          SizedBox(height: 10.h,),
          Container(
              margin: REdgeInsets.only(left: 180,top: 128),
              child: SvgPicture.asset(
                Images.plant,
                width: 46.w,
                height: 95.h,
              )),
        ],)],
      ),
    );
  }
}
