import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

import '../extentions/color_extension.dart';

mixin LightTheme on ThemeData {
  static ThemeData get theme => ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: AppColors.secondaryColor,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge:
            TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Poppins'),
        bodyMedium: TextStyle(
          color: AppColors.textColor,
          fontFamily: 'Poppins',
          fontSize: 16,
        ),
        headlineSmall: TextStyle(
          color: AppColors.textColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
          fontSize: 14,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.gestureColor,
        foregroundColor: Colors.white,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          elevation: WidgetStateProperty.all(5),
          // fixedSize: WidgetStateProperty.all(Size(w * 0.8, h * 0.06)),
          backgroundColor: WidgetStateProperty.all(AppColors.primaryColor),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        surface: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: AppColors.borderColor,
          fontFamily: 'Poppins',
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor.fromHex('#8C8D89')),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor.fromHex('#8C8D89')),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor.fromHex('#8C8D89')),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor.fromHex('#8C8D89')),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: HexColor.fromHex('#8C8D89')),
          borderRadius: BorderRadius.circular(15),
        ),
      ));
  static ThemeData get darkTheme => ThemeData();
}
