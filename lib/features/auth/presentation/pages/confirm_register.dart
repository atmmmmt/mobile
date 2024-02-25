import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:atmtha_mobile/features/auth/presentation/pages/congrats_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_theme/colors.dart';
import '../../../../resources/resources.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key}) : super(key: key);
  static String name = "confirm_password";
  static String path = "/confirm_password";

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  bool onEditing = true;
  late String code;
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
                    Images.confirmCode,
                    height: 250,
                    width: 200,
                  )),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                child: Text("من فضلك ادخل الرمز الدي ارسلناه للتو لرقم ",
                    style: Theme.of(context).textTheme.bodyLarge),
              )),
              Text("الهاتف", style: Theme.of(context).textTheme.bodyLarge),
              Text("963****+", style: Theme.of(context).textTheme.bodyLarge),
              SizedBox(
                height: 10.h,
              ),
              VerificationCode(
                  textStyle: const TextStyle(fontSize: 20),
                  autofocus: true,
                  fullBorder: true,
                  keyboardType: TextInputType.number,
                  length: 5,
                  clearAll: Padding(
                    padding: REdgeInsetsDirectional.all(8.0),
                    child: Text(
                      'مسح الكل',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: lightColorScheme.onTertiaryContainer),
                    ),
                  ),
                  margin: const EdgeInsets.all(12),
                  onCompleted: (String value) {
                    setState(() {
                      code = value;
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {
                      onEditing = value;
                    });
                    if (!onEditing) FocusScope.of(context).unfocus();
                  }),
              Padding(
                padding: REdgeInsetsDirectional.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'لم تتلقى أي رسالة؟',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(width: 5.w,),
                    GestureDetector(
                        onTap: () {},
                        child: Text(
                          "اعادة إرسال",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              MainButton(
                text: "استمرار",
                onPressed: () {
                  context.pushNamed(CongratsScreen.name);

                },
              ),
              Container(
                  margin: REdgeInsets.only(right: 120, top: 80),
                  child: SvgPicture.asset(
                    Images.confirmCodeGirl,
                    width: 257.w,
                    height: 237.h,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
