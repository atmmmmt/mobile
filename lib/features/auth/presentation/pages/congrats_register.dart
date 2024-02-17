import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../resources/resources.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(children: [
          Container(
              margin: REdgeInsets.only(left: 200),
              child: SvgPicture.asset(
                Images.congrats,
                height: 300.h,
                width: 290.w,
              )),
          SizedBox(height: 20.h,),
          Text("تهانينا....يمكنك الان بالبدأ بحل الكثير من"),
          Text("الأسئلة جميع المواد..."),
          SizedBox(height: 20.h,),
          Center(
            child:SvgPicture.asset(
    Images.congratsIllustration,
    height: 187.h,
    width: 208.w,
    )),
          SizedBox(height: 20.h,),
          MainButton(text: "استمرار", onPressed: (){}),
          SizedBox(height: 10.h,),
          Container(
              margin: REdgeInsets.only(right: 120,),
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
