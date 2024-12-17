import 'package:flutter/material.dart';
import 'package:sitges/application/theme/text_themes.dart';

import '../../constants/constants.dart';
import '../../di/di.dart';
import 'app_colors.dart';

final baseGradientColor = LinearGradient(
    begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [AppColor.kPrimary[50]!, AppColor.kPrimary[50]!]);

ThemeData get lightTheme => ThemeData.light().copyWith(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(primary: AppColor.kPrimary[50]!, brightness: Brightness.light),
      textTheme: textTheme,
      // useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400, color: AppColor.kLabelColor),
          hintStyle: textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400, color: AppColor.kLabelColor),
          floatingLabelStyle: textTheme.bodyMedium!.copyWith(color: AppColor.kPrimary[50]!),
          errorStyle: textTheme.bodySmall!.copyWith(color: AppColor.kError[70]),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(inject<Px>().k12),
              borderSide: BorderSide(color: AppColor.kPrimary[50]!, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(inject<Px>().k12),
              borderSide: const BorderSide(color: AppColor.kUnselectedColor, width: 2)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(inject<Px>().k12),
              borderSide: const BorderSide(color: AppColor.kUnselectedColor, width: 2)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(inject<Px>().k12),
              borderSide: BorderSide(color: AppColor.kError[70]!, width: 2))),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(inject<Px>().k20),
          topRight: Radius.circular(inject<Px>().k20),
        )),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(textTheme.titleMedium!),
        side: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled)
            ? const BorderSide(color: AppColor.kUnselectedColor, width: 2)
            : BorderSide(color: AppColor.kPrimary[50]!, width: 2)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.zero,
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(inject<Px>().k12),
        )),
        foregroundColor: MaterialStateProperty.resolveWith(
            (states) => states.contains(MaterialState.disabled) ? AppColor.kUnselectedColor : AppColor.kPrimary[50]!),
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(textTheme.titleMedium!),
          backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.pressed)
              ? AppColor.kPrimary[50]
              : states.contains(MaterialState.disabled)
                  ? AppColor.kUnselectedColor
                  : AppColor.kPrimary[50]),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.zero,
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(inject<Px>().k12),
          )),
          foregroundColor: MaterialStateProperty.resolveWith(
              (states) => states.contains(MaterialState.disabled) ? AppColor.kLabelColor : AppColor.kWhiteColor),
        ),
      ),
      disabledColor: AppColor.kLabelColor,
      appBarTheme: AppBarTheme(titleTextStyle: textTheme.displaySmall, color: AppColor.kPrimary[50]),
      scaffoldBackgroundColor: AppColor.kSecondary[30],
      // textTheme: textTheme,
    );
