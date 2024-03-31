
import 'package:app_utilities/app_utilities.dart';
import 'package:flutter/material.dart';


class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: false,
      primarySwatch: AppColors.generateMaterialColor(AppColors.primary),
      dividerColor: AppColors.grey,
      brightness: Brightness.light,
      backgroundColor: AppColors.white,
      cardColor: AppColors.white,
      primaryColor: AppColors.primary,
      hintColor: AppColors.darkGrey,
      listTileTheme: const ListTileThemeData(horizontalTitleGap: 0),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: Dimens.elevation5, backgroundColor: AppColors.primary),
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(
            size: Dimens.appBarIconSize,
            color: AppColors.white,
          ),
          backgroundColor: AppColors.primary,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            color: AppColors.white,
            fontSize: Dimens.bodyText1,
            fontWeight: FontWeight.w500,
            fontFamily: FontFamily.sourceSansProRegular,
          ),
          foregroundColor: AppColors.white),
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
            TextStyle(fontWeight: FontWeight.w600, fontSize: Dimens.headline6),
        labelColor: AppColors.black,
        unselectedLabelStyle:
            TextStyle(fontWeight: FontWeight.w600, fontSize: Dimens.headline6),
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: AppColors.grey,
        indicator: UnderlineTabIndicator(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimens.cardCornerRadius),
              topRight: Radius.circular(Dimens.cardCornerRadius),
            ),
            borderSide: BorderSide(color: AppColors.black, width: 3)),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.headline1,
            fontWeight: FontWeight.w900),
        headline2: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.headline2,
            fontWeight: FontWeight.w700),
        headline3: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.headline3,
            fontWeight: FontWeight.w700),
        headline4: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.headline4,
            fontWeight: FontWeight.w600),
        headline5: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.headline5,
            fontWeight: FontWeight.w600),
        headline6: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.headline6,
            fontWeight: FontWeight.w500),
        bodyText1: TextStyle(
            color: AppColors.black,
            fontSize: Dimens.bodyText1,
            fontWeight: FontWeight.w500),
        bodyText2: TextStyle(
            color: AppColors.darkGrey,
            fontSize: Dimens.bodyText2,
            fontWeight: FontWeight.w400),
        caption: TextStyle(
            color: AppColors.darkGrey,
            fontSize: Dimens.caption,
            fontWeight: FontWeight.w400),
        button: TextStyle(
            color: AppColors.white,
            fontSize: Dimens.button,
            fontWeight: FontWeight.w600),
      ),
      fontFamily: '${AppConstants.packagePath}SourceSansPro',
    );
  }

  static ThemeData get darkTheme {
    return ThemeData();
  }
}
