import 'package:atmtha_mobile/core/app_theme/listtile_card.dart';
import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/app_theme/colors.dart';
import '../../../../resources/resources.dart';
import '../widgets/textfield_inputs.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                    margin: REdgeInsets.only(left: 200),
                    child: SvgPicture.asset(
                      Images.changePasss,
                      height: 290.h,
                      width: 302.w,
                    )),
                Text(
                    "حدد تفاصيل الاتصال التي تفضل أن نرسل\n إليك عن طريقها التفاصيل...",
                    style: Theme.of(context).textTheme.titleMedium),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    alignment: Alignment.center,
                    width: 390.w,
                    height: 152.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                          width: 2,
                          color: lightColorScheme.outline),
                    ),

                  child: ChangePassListTile(tittle: "tittle", subtitle: "subtitle", icon: Icons.email_outlined)
                    ),



                SizedBox(
                  height: 70.h,
                ),
                Padding(
                  padding: REdgeInsets.only(right: 20, left: 10),
                  child: Row(
                    children: [
                      MediumButton(
                        text: "استمرار",
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      SmallButton(text: "رجوع", onPressed: () {})
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    Container(
                        margin: REdgeInsets.only(right: 120,top: 145),
                        child: SvgPicture.asset(
                          Images.changePassPlant,
                          width: 23.w,
                          height: 57.h,
                        )),
                    Container(
                        margin: REdgeInsets.only(right: 120),
                        child: SvgPicture.asset(
                          Images.changPassBoy,
                          width: 144.w,
                          height: 197.h,
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
