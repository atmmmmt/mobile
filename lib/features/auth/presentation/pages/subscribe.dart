import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:atmtha_mobile/core/widgets/profile_card.dart';
import 'package:atmtha_mobile/features/auth/presentation/widgets/WelcomeName.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class Subscribe extends StatelessWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [

          Column(
            children: [
               WelcomeWithName(text: "اشترك الان أو جرب بعض الدروس مجانا"),
              SizedBox(height:70.h,),
              SubscribeCard(image: Images.subscribeLeading, text: "تفعيل الاشتراك",),
              SizedBox(height: 20.h,),
              SubscribeCard(image: Images.lockIcon,
                text: "النسخة المجانية", ),
              SizedBox(height: 90.h,),
              MainButtonInActive(text: "استمرار", onPressed: (){})
            ],
          ),
          Row(
            children: [
              Container(
                  margin: REdgeInsets.only(right: 120,top: 145),
                  child: SvgPicture.asset(
                    Images.plant,
                    width: 23.w,
                    height: 57.h,
                  )),
              // Container(
              //     margin: REdgeInsets.only(right: 120),
              //     child: SvgPicture.asset(
              //       Images.changPassBoy,
              //       width: 144.w,
              //       height: 197.h,
              //     )),
            ],
          ),


        ],
      ),
    );
  }
}
