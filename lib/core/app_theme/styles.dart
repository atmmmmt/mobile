import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'fontsize.dart';

ThemeData lightTheme (BuildContext context)=>ThemeData(
  fontFamily: "Tajawal-Regular",
  useMaterial3: true,
  colorScheme: lightColorScheme.copyWith(
    brightness: Brightness.light,
  ),  textTheme: TextTheme(
  displayLarge: Theme.of(context).textTheme.displayLarge?.copyWith(
    fontSize: FontSize.displayLarge,
  ),
  displayMedium: Theme.of(context).textTheme.displayMedium?.copyWith(

  ),
  displaySmall: Theme.of(context).textTheme.displaySmall?.copyWith(
    fontSize: FontSize.displaySmall,
    fontFamily: "Tajawal-Regular",

    color: lightColorScheme.onTertiaryContainer,
  ),
  headlineMedium: Theme.of(context).textTheme.headlineMedium?.copyWith(
    fontSize: FontSize.headlineMedium,
    fontFamily: "Tajawal-Regular",

    color: lightColorScheme.onTertiaryContainer,
  ),
  headlineSmall: Theme.of(context).textTheme.headlineSmall?.copyWith(
    fontSize: FontSize.headlineSmall,
    fontFamily: "Tajawal-Regular",
    color: lightColorScheme.onTertiaryContainer,
    fontWeight: FontWeight.w500,
  ),
  titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(
    fontSize: FontSize.titleLarge,
  ),
  titleMedium: Theme.of(context).textTheme.titleMedium?.copyWith(
    fontSize: FontSize.titleMedium,
    fontWeight: FontWeight.bold,
    fontFamily: "Tajawal-Regular",
    color: lightColorScheme.onTertiaryContainer,


  ),
  titleSmall: Theme.of(context).textTheme.titleSmall?.copyWith(
    fontSize: FontSize.titleSmall,
    fontFamily: "Tajawal-Regular",
    color: lightColorScheme.onTertiaryContainer,
  ),
  bodyLarge: Theme.of(context).textTheme.bodyLarge?.copyWith(
    fontSize: FontSize.bodyLarge,
  ),
  bodyMedium: Theme.of(context).textTheme.bodyMedium?.copyWith(
    fontSize: FontSize.bodyMedium,
    fontFamily: "Tajawal-Regular",

    color: lightColorScheme.onTertiaryContainer.withOpacity(0.4),
  ),
  bodySmall: Theme.of(context).textTheme.bodySmall?.copyWith(
    fontSize: FontSize.bodySmall,
    fontFamily: "Tajawal-Regular",

  ),
  labelLarge: Theme.of(context).textTheme.labelLarge?.copyWith(
    fontSize: FontSize.labelLarge,
  ),
  labelSmall: Theme.of(context).textTheme.labelSmall?.copyWith(
    fontSize: FontSize.labelSmall,
    fontFamily: "Tajawal-Regular",
    color: lightColorScheme.tertiaryContainer,


  ),
),
  iconTheme: IconThemeData(color: lightColorScheme.primary),
  appBarTheme: const AppBarTheme().copyWith(
    titleTextStyle: Theme.of(context).textTheme.bodyLarge,
    color: lightColorScheme.background,
    iconTheme:  IconThemeData(color: lightColorScheme.primary),
    systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ),
    shadowColor: lightColorScheme.shadow,
  ),
  dialogTheme: const DialogTheme().copyWith(
    backgroundColor: lightColorScheme.primary,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
  ),
);