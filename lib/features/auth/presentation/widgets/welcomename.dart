import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../resources/resources.dart';

class WelcomeWithName extends StatelessWidget {
  const WelcomeWithName({Key? key, required this.text}) : super(key: key);
final String text ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(child: SvgPicture.asset(Images.qusetionMark)),
              Positioned(
                  right: 40,
                  top: 70,
                  child: Text(
                    "مرحبا بك",
                    style: Theme.of(context).textTheme.headlineMedium,
                  )),

              Positioned(
                  right: 200,
                  // left: 0,
                  top: 70,
                  child: SvgPicture.asset(Images.handShake))
            ]),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
