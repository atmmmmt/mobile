
import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerityWayCard extends StatelessWidget {
  const VerityWayCard({Key? key, required this.text}) : super(key: key);
 final String text;

  @override
  Widget build(BuildContext context) {
    return   Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 253.h,
        width: 360.w,
        transform: Matrix4.skewX(-.5/7.5),
        decoration: BoxDecoration(
            border:Border.all(color: Colors.white,width: 3.5),
            color: lightColorScheme.primary,
            borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(text,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),),
        ),
      ),
    );
  }
}
