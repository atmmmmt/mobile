import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:atmtha_mobile/core/widgets/profile_card.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/activate_qr_code.dart';
import 'package:atmtha_mobile/features/auth/presentation/widgets/welcomename.dart';
import 'package:atmtha_mobile/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Subscribe extends StatelessWidget {
  const Subscribe({Key? key}) : super(key: key);
  static String name = "subscribe";
  static String path = "/subscribe";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              WelcomeWithName(text: "اشترك الان أو جرب بعض الدروس مجانا"),
              SizedBox(
                height: 70.h,
              ),
              SubscribeCard(
                image: Images.subscribeLeading,
                text: "تفعيل الاشتراك",
              ),
              SizedBox(
                height: 20.h,
              ),
              SubscribeCard(
                image: Images.lockIcon,
                text: "النسخة المجانية",
              ),
              SizedBox(
                height: 90.h,
              ),
              MainButtonInActive(text: "استمرار", onPressed: () {
                context.pushNamed(ActivateCode.name);
              }),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: REdgeInsets.only(right: 120, top: 145),
                  child: SvgPicture.asset(
                    Images.plant,
                    width: 33.w,
                    height: 67.h,
                  )),
              Container(
                  margin: REdgeInsets.only(right: 100,top: 60),
                  child: SvgPicture.asset(
                    Images.qrCodeGirl,
                    width: 140.w,
                    height: 173.h,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
