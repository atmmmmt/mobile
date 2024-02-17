import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/app_theme/colors.dart';
import '../../../../core/widgets/app_buttons.dart';
import '../../../../resources/resources.dart';
import '../widgets/textfield_inputs.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                  children: [
                Container(
                    margin: REdgeInsets.only(left: 200),
                    child: SvgPicture.asset(
                      Images.createAccount,
                      height: 250,
                      width: 200,
                    )),
                Positioned(
                    bottom: -12,
                    right: 260,
                    child: SvgPicture.asset(Images.loginGirlStack)),
              ]),
              Container(
                alignment: Alignment.center,
                width: 370.w,
                height: 300.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(width: 2, color: lightColorScheme.outline),
                ),
                child: Column(
                  children: [
                    UserNameField(controller: userName),
                    SizedBox(
                      height: 5.h,
                    ),
                    PhoneField(controller: phone),
                    SizedBox(
                      height: 5.h,
                    ),
                    PasswordField(controller: password),
                    SizedBox(
                      height: 5.h,
                    ),
                    PasswordField(controller: confirmPassword)
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                  margin: REdgeInsets.only(right: 40), child: SelectGender()),
              SizedBox(
                height: 20.h,
              ),
              MainButtonInActive(
                text: 'تسجيل الدخول',
                onPressed: () {},
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
                    width: 30.w,
                  ),
                  SubButtonDark(
                    text: "انشاء حساب",
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
