import 'package:flutter/material.dart';

import '../app_theme/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300,
        height: 50,
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
        child: Center(
            child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: lightColorScheme.background),
        )),
      ),
    );
  }
}
class InActiveMainButton extends StatelessWidget {
  const InActiveMainButton({Key? key, required this.text, required this.onPressed}) : super(key: key);
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
            offset: Offset(2, 5),
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
              fixedSize: Size(300,50),
              backgroundColor: lightColorScheme.outline,
              shadowColor: lightColorScheme.outline,
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
            offset: Offset(2, 5),
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
              fixedSize: Size(120, 45),
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
      transform: Matrix4.skewX(-.5 / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: lightColorScheme.background.withOpacity(0.8),
            offset: Offset(2, 5),
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
              fixedSize: const Size(120, 45),
              backgroundColor: lightColorScheme.background,
              shadowColor: lightColorScheme.background,
              elevation: 1),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: lightColorScheme.onTertiaryContainer),
          )),
    );
  }
}
