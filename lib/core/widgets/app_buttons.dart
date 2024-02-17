import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_theme/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 56.h,
      transform: Matrix4.skewX(-.5 / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightColorScheme.tertiary,
            offset: Offset(2, 6),
            //blurRadius: 9/5,
          )
        ],
        color: lightColorScheme.primary,
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: lightColorScheme.primary,
              shadowColor: lightColorScheme.tertiary,
              elevation: 2),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: lightColorScheme.background),
          )),
    );
  }
}


class MainButtonInActive extends StatelessWidget {
  const MainButtonInActive({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      transform: Matrix4.skewX(-.5 / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightColorScheme.outline,
            offset: Offset(2, 6),
            //blurRadius: 9/5,
          )
        ],
        color: lightColorScheme.inversePrimary,
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              fixedSize: Size(300, 50),
              backgroundColor: lightColorScheme.surfaceTint,
              shadowColor: lightColorScheme.inversePrimary,
              elevation: 2),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: lightColorScheme.inversePrimary,fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}

class SubButtonLight extends StatelessWidget {
  const SubButtonLight({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.skewX(-.5 / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightColorScheme.tertiary,
            offset: Offset(1, 4),
            //blurRadius: 9/5,
          )
        ],
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              fixedSize: Size(145.w, 47.h),
              backgroundColor: lightColorScheme.primary,
              shadowColor: lightColorScheme.tertiary,
              elevation:1),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: lightColorScheme.background),
          )),
    );
  }
}

class SubButtonDark extends StatelessWidget {
  const SubButtonDark({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145.w,
      height: 47.h,
      transform: Matrix4.skewX(-.5 / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightColorScheme.secondaryContainer,
            offset: const Offset(2, 6),
            //blurRadius: 9/5,
          ),
        ],
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: lightColorScheme.outline)

              ),

              fixedSize: Size(300.w, 50.h),
              backgroundColor: lightColorScheme.background,
              shadowColor: lightColorScheme.onSecondaryContainer,
              elevation: 0),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: lightColorScheme.onTertiaryContainer,fontWeight: FontWeight.bold),
          )),
    );
  }
}

class SmallButton extends StatelessWidget {
  const SmallButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141.w,
      height: 57.h,
      transform: Matrix4.skewX(-.5 / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightColorScheme.secondaryContainer,
            offset: const Offset(2, 6),
            //blurRadius: 9/5,
          ),
        ],
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: lightColorScheme.outline)

              ),

              fixedSize: Size(300.w, 50.h),
              backgroundColor: lightColorScheme.background,
              shadowColor: lightColorScheme.onSecondaryContainer,
              elevation: 0),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: lightColorScheme.onTertiaryContainer,fontWeight: FontWeight.bold),
          )),
    );
  }
}

class MediumButton extends StatelessWidget {
  const MediumButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      height: 57.h,
      transform: Matrix4.skewX(-.5 / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightColorScheme.tertiary,
            offset: Offset(2, 6),
            //blurRadius: 9/5,
          )
        ],
        color: lightColorScheme.primary,
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: lightColorScheme.tertiary)
              ),
              fixedSize: Size(300.w, 50.h),
              backgroundColor: lightColorScheme.primary,
              shadowColor: lightColorScheme.tertiary,
              elevation: 2),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: lightColorScheme.background,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
