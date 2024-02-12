import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../../../../core/app_theme/colors.dart';
import '../../../../resources/resources.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

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
          Container(
              margin: REdgeInsets.only(left: 200),
              child: SvgPicture.asset(
                Images.confirmCode,
                height: 250,
                width: 200,
              )),
          Center(
              child: Text("من فضلك ادخل الرمز الدي ارسلناه للتو لرقم الهاتف",
                  style: Theme.of(context).textTheme.bodySmall)),
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
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(
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
            child: Center(
              child: Text(
                'لم تتلقى أي رسالة؟',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){},
              child: Text("اعادة إرسال")),
          SizedBox(height: 10.h,),
          MainButton(text: "استمرار")
        ],
      ),
    );
  }
}
