import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sama_bus/core/styles/app_colors.dart';

import '../extentions/color_extension.dart';

mixin LightTheme on ThemeData {
  static ThemeData get theme => ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: AppColors.primaryColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.secondaryColor),
        titleTextStyle: TextStyle(
          color: AppColors.primaryColor,
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: const TextStyle(
            color: Colors.black, fontSize: 16, fontFamily: 'Poppins'),
        bodyMedium: TextStyle(
          color: AppColors.secondaryColor.withOpacity(0.8),
          fontFamily: 'Poppins',
          fontSize: 14,
        ),
        headlineSmall: const TextStyle(
          color: AppColors.secondaryColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
          fontSize: 12,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.gestureColor,
        foregroundColor: Colors.white,
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