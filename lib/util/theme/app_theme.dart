import 'package:flutter/material.dart';
import 'package:room_finder/util/theme/app_colors.dart';
import 'package:room_finder/util/theme/font_family.dart';

class AppTheme {
  static ThemeData lightTheme() {
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
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
