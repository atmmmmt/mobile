
import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDisplayMyInformation extends StatelessWidget {
  const CardDisplayMyInformation({Key? key, required this.text}) : super(key: key);
final String text;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 392.w,
      decoration: BoxDecoration(
        color: lightColorScheme.onPrimary,
        border: Border.all(
            color: lightColorScheme.secondaryContainer,
            width: 1.5),
        borderRadius: BorderRadius.circular(15),
      ),
      transform: Matrix4.skewX(-.5 / 4),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
          text,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: lightColorScheme.secondary),
          ),
        ),
      ),
    );
  }
}
