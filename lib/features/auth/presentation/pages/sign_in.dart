import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:atmtha_mobile/features/auth/presentation/widgets/textfield_inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/resources.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String name = "sign_in_screen";
  static String path = "/sign_in_screen";
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Stack(
                children: [Container(
                    margin: REdgeInsets.only(left: 200),
                    child: SvgPicture.asset(Images.wlcLogin)),
                  Positioned(
                    bottom: -12,
                      right: 250,
                      child: SvgPicture.asset(Images.loginGirlStack)),

                ]  ),
              Container(
                alignment: Alignment.center,
                width: 370.w,
                height: 152.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    width: 2,
                      color: lightColorScheme.outline),
                ),
                child: Column(
                  children: [
                    PhoneField(controller: phone),
                    SizedBox(
                      height: 5.h,
                    ),
                    PasswordField(controller: password)
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {}, child: Text(" نسيت كلمة المرور ؟",style: Theme.of(context).textTheme.titleSmall)),
              SizedBox(
                height: 20.h,
              ),
               MainButton(
                text: 'تسجيل الدخول', onPressed: () {  },
              ),
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SubButtonLight(
                    text: "تسجيل الدخول",
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  SubButtonDark(
                    text: "انشاء حساب",
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
