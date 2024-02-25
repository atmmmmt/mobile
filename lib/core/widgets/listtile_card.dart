import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_theme/colors.dart';

class ChangePassListTile extends StatelessWidget {
  const ChangePassListTile(
      {Key? key,
      required this.tittle,
      required this.subtitle,
      required this.image})
      : super(key: key);
  final String tittle;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),

        title: Text(
          tittle,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize:16.sp ),
        ),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize:12.sp )),
        leading: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: lightColorScheme.primaryContainer.withOpacity(0.3),
                  blurRadius: 7/6,
                ),
              ],
              color: lightColorScheme.background),
          child: Image.asset(
            image,
            width: 20,
            height: 20,
            // color: lightColorScheme.primaryContainer,
          ),
        ),
      ),
    );
  }
}

class Subjects {
  final String subject;

  Subjects({required this.subject});

}
