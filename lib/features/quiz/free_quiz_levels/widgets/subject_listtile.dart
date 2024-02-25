import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectListTile extends StatelessWidget {
  const SubjectListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.w,
      height: 89.h,
      color: lightColorScheme.primary,
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: lightColorScheme.background),
        ),
        subtitle: Text(subtitle,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: lightColorScheme.background)),
        trailing: Container(
          height: 57.h,
          width: 54.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: lightColorScheme.secondary, width: 1.5),
            color: lightColorScheme.primary,
            boxShadow: [
              BoxShadow(
                color: lightColorScheme.secondary,
                offset: Offset(0, 2),
                // blurRadius: 7/6,
              ),
            ],
          ),
          child: Icon(
            Icons.calendar_month_rounded,
            color: lightColorScheme.background,
            size: 25,
          ),
        ),
      ),
    );
  }
}
