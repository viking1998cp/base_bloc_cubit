import 'package:flutter/material.dart';
import 'package:lichviet_modules/core/extensions/size_extension.dart';
import 'package:lichviet_modules/presentation/themes/theme_color.dart';

// using for common text styles and some special styles

class ThemeStyles {
  // common
  static TextStyle superTiny = TextStyle(fontSize: 10.sp);
  static TextStyle superTiny500 =
      TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500);

  static TextStyle tiny = TextStyle(fontSize: 12.sp);
  static TextStyle tiny500 =
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500);
  static TextStyle tiny400 =
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400);
  static TextStyle tiny600 =
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600);
  static TextStyle tiny600White = TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle small = TextStyle(fontSize: 14.sp);
  static TextStyle small400 =
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, height: 1.8);
  static TextStyle small500 =
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500);
  static TextStyle small600 =
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, height: 1.8);

  static TextStyle medium = TextStyle(fontSize: 16.sp);
  static TextStyle medium500 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
  static TextStyle medium600 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600);
  static TextStyle medium400 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400);

  static TextStyle medium600Black = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: ThemeColor.darkBlack);

  static TextStyle big = TextStyle(fontSize: 18.sp);
  static TextStyle big500 =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500);
  static TextStyle big600 =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);

  static TextStyle big600PrimaryColor = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w600, color: ThemeColor.primary);

  static TextStyle big600ColorText3 = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w600, color: ThemeColor.text3);

  static TextStyle extra = TextStyle(fontSize: 20.sp);
  static TextStyle extra500 =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500);

  static TextStyle extraBig =
      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500);

  // app bar
  static TextStyle appBar =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500);

  // input text stype
  static TextStyle input = TextStyle(fontSize: 15.sp, color: ThemeColor.text);
  static TextStyle inputPlaceholder =
      TextStyle(fontSize: 15.sp, color: ThemeColor.placeholder);

  // button
  static TextStyle button = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.white);

  // bottom navigation
  static TextStyle get bottomNavigationLabelStyle => TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
      );
  // top snack bar
  static TextStyle get topSnackBarStyle => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      );

  // dialog action button
  static TextStyle get dialogTitleStyle => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get dialogMessageStyle => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get dialogActionButtonStyle => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      );
  static TextStyle textHintSmallGrey = const TextStyle(
    fontSize: 12,
    color: ThemeColor.darkGrey,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textHintBigGrey = const TextStyle(
    fontSize: 14,
    color: ThemeColor.darkGrey,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textSmallHintBigGrey500 = const TextStyle(
    fontSize: 12,
    color: ThemeColor.darkGrey500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textHintBigGrey500 = const TextStyle(
    fontSize: 14,
    color: ThemeColor.darkGrey500,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bigTextGrey = const TextStyle(
    fontSize: 18,
    color: ThemeColor.text2,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textMeidum = const TextStyle(
    fontSize: 12,
    color: ThemeColor.text2,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textMeidum600Blue = const TextStyle(
    fontSize: 14,
    color: ThemeColor.blueBoder,
    fontWeight: FontWeight.w600,
  );
}
