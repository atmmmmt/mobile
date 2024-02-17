import 'package:atmtha_mobile/core/widgets/app_buttons.dart';
import 'package:atmtha_mobile/features/auth/presentation/widgets/WelcomeName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/resources.dart';

class ChooseMajor extends StatelessWidget {
  const ChooseMajor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const WelcomeWithName(text: 'اختر اتختصاصك من فضلك',),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        Images.scienceBoy,
                        width: 122.w,
                        height: 131.h,
                      ),
                      Text(
                        "علمي",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60.w,
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(
                        Images.litertureGirl,
                        width: 122.w,
                        height: 131.h,
                      ),
                      Text("أدبي",
                          style: Theme.of(context).textTheme.labelLarge),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              MainButtonInActive(text: "استمرار", onPressed: () {}),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  Container(
                      margin: REdgeInsets.only(right: 90,top: 135),
                      child: SvgPicture.asset(
                        Images.plant,
                        width: 33.w,
                        height: 67.h,
                      )),
                  Container(
                      margin: REdgeInsets.only(right: 60,),
                      child: SvgPicture.asset(
                        Images.chooseMajorIluustration,
                        width: 227.w,
                        height: 226.h,
                      )),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
