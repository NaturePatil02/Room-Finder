import 'package:flutter/material.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class AppTheme {
  static ThemeData lightTheme() {
    InputBorder _textfieldBroder({Color color = Colors.grey}) =>
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: color, width: 1.5),
        );

    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,

      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: AppColors.primaryTextColorLight,
          fontFamily: FontFamily.kanitSemiBold,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),

        displayMedium: TextStyle(
          color: AppColors.primaryTextColorLight,
          fontFamily: FontFamily.kanitSemiBold,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),

        displaySmall: TextStyle(
          color: AppColors.descriptionTextColorLignt,
          fontFamily: FontFamily.kanitRegular,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),

        bodyMedium: TextStyle(
          color: AppColors.descriptionTextColorLignt,
          fontFamily: FontFamily.kanitRegular,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),

        bodySmall: TextStyle(
          color: AppColors.descriptionTextColorLignt,
          fontFamily: FontFamily.kanitRegular,
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),

        titleMedium: TextStyle(
          fontFamily: FontFamily.kanitSemiBold,
          color: AppColors.primaryTextColorLight,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontFamily: FontFamily.kanitRegular,
          color: const Color.fromARGB(255, 145, 145, 145),
          fontSize: 13,
        ),
        enabledBorder: _textfieldBroder(),
        focusedBorder: _textfieldBroder(color: AppColors.primaryColor),
        errorBorder: _textfieldBroder(color: AppColors.errorColor),
        focusedErrorBorder: _textfieldBroder(color: AppColors.primaryColor),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
