import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA70033.withOpacity(0.75),
      );

  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
      );

  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );

  // Gradient decorations
  static BoxDecoration get gradient5 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0, 1),
          colors: [appTheme.deepPurple50, appTheme.deepPurple100],
        ),
      );

  static BoxDecoration get gradientBlueAToDeepPurple => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.71, 0.11),
          end: Alignment(0.16, 0.94),
          colors: [
            appTheme.blueA20002,
            appTheme.indigo500,
            appTheme.deepPurple70001,
          ],
        ),
      );

  static BoxDecoration get gradientBlueAToIndigoA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.32, 0.56),
          end: Alignment(1.18, -1.16),
          colors: [appTheme.blueA20001, appTheme.indigoA70033],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();

  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(4, 4),
          ),
        ],
      );

  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        border: Border(
          left: BorderSide(
            color: appTheme.black900,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.black900,
            width: 1.h,
          ),
          right: BorderSide(
            color: appTheme.black900,
            width: 1.h,
          ),
        ),
      );

  static BoxDecoration get outlineBlueA => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.blueA20006,
          width: 1.h,
        ),
      );

  // Shadow decorations
  static BoxDecoration get sh => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo30014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 3.84),
          ),
        ],
      );

  // Gradient decorations (fs)
  static BoxDecoration get fs1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.96, 0),
          end: Alignment(0, 1.24),
          colors: [appTheme.blue200, appTheme.blueA20004],
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL60 => BorderRadius.only(
        topRight: Radius.circular(60.h),
        bottomLeft: Radius.circular(60.h),
        bottomRight: Radius.circular(14.h),
      );

  static BorderRadius get customBorderLR60 => BorderRadius.only(
        topRight: Radius.circular(60.h),
        bottomLeft: Radius.circular(24.h),
        bottomRight: Radius.circular(24.h),
      );

  static BorderRadius get customBorderTL6 => BorderRadius.only(
        topLeft: Radius.circular(6.h),
        topRight: Radius.circular(6.h),
        bottomLeft: Radius.circular(2.h),
        bottomRight: Radius.circular(2.h),
      );

  static BorderRadius get customBorderTL60 => BorderRadius.only(
        topLeft: Radius.circular(60.h),
        bottomRight: Radius.circular(60.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(1.h);
  static BorderRadius get roundedBorder10 => BorderRadius.circular(10.h);
  static BorderRadius get roundedBorder20 => BorderRadius.circular(20.h);
  static BorderRadius get roundedBorder24 => BorderRadius.circular(24.h);
  static BorderRadius get roundedBorder30 => BorderRadius.circular(30.h);
  static BorderRadius get roundedBorder52 => BorderRadius.circular(52.h);
}
