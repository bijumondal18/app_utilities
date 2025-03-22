import 'package:app_utilities/app_utilities.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: AppColors.generateMaterialColor(AppColors.primary),
      dividerColor: AppColors.grey,
      brightness: Brightness.light,
      cardColor: AppColors.white,
      primaryColor: AppColors.primary,
      hintColor: AppColors.darkGrey,
      listTileTheme: const ListTileThemeData(horizontalTitleGap: 0),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: Dimens.elevationSmall, backgroundColor: AppColors.primary),
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(
            size: Dimens.appBarIconSize,
            color: AppColors.black,
          ),
          backgroundColor: AppColors.white,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.bodyLarge,
            fontWeight: FontWeight.w500,
          ),
          foregroundColor: AppColors.black),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.lightGrey, circularTrackColor: AppColors.lightGrey),
      checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(Dimens.cardCornerRadius / 3))),
      scaffoldBackgroundColor: AppColors.scaffold,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      tabBarTheme: const TabBarTheme(
        labelStyle:
            TextStyle(fontWeight: FontWeight.w600, fontSize: Dimens.titleSmall),
        labelColor: AppColors.black,
        unselectedLabelStyle:
            TextStyle(fontWeight: FontWeight.w600, fontSize: Dimens.titleSmall),
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: AppColors.grey,
        indicator: UnderlineTabIndicator(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimens.cardCornerRadius),
              topRight: Radius.circular(Dimens.cardCornerRadius),
            ),
            borderSide: BorderSide(color: AppColors.black, width: 3)),
      ),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.headlineLarge,
            fontWeight: FontWeight.w900),
        headlineMedium: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.headlineMedium,
            fontWeight: FontWeight.w700),
        headlineSmall: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.headlineSmall,
            fontWeight: FontWeight.w700),
        titleLarge: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.titleLarge,
            fontWeight: FontWeight.w600),
        titleMedium: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.titleMedium,
            fontWeight: FontWeight.w600),
        titleSmall: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.titleSmall,
            fontWeight: FontWeight.w500),
        bodyLarge: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.bodyLarge,
            fontWeight: FontWeight.w500),
        bodyMedium: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.bodyMedium,
            fontWeight: FontWeight.w400),
        bodySmall: GoogleFonts.lato(
            color: AppColors.darkGrey,
            fontSize: Dimens.bodySmall,
            fontWeight: FontWeight.w400),
        labelLarge: GoogleFonts.lato(
            color: AppColors.black,
            fontSize: Dimens.labelLarge,
            fontWeight: FontWeight.w400),
        labelMedium: GoogleFonts.lato(
            color: AppColors.darkGrey,
            fontSize: Dimens.labelMedium,
            fontWeight: FontWeight.w400),
        labelSmall: GoogleFonts.lato(
            color: AppColors.darkGrey,
            fontSize: Dimens.labelSmall,
            fontWeight: FontWeight.w400),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData();
  }
}
