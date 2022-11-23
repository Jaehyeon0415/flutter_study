import 'package:flutter/material.dart';
import 'package:playground/res/color.dart';

class Font {
  static const String notoSansKR = 'NotoSansKR';
}

class FontSizes {
  static double get s10 => 10;
  static double get s12 => 12;
  static double get s14 => 14;
  static double get s16 => 16;
  static double get s18 => 18;
  static double get s20 => 20;
  static double get s24 => 24;
  static double get s28 => 28;
  static double get s32 => 32;
  static double get s36 => 36;
  static double get s40 => 40;
}

class TextStyles {
  // Base textStyle
  static TextStyle notoSansKR = TextStyle(
    fontFamily: Font.notoSansKR,
    fontSize: FontSizes.s16,
    fontWeight: FontWeight.w400,
    color: UiColor.black,
    height: 1,
  );

  static TextStyle logo = notoSansKR.copyWith(
    fontSize: FontSizes.s40,
    fontWeight: FontWeight.w700,
  );

  static TextStyle appbar = notoSansKR.copyWith(
    fontSize: FontSizes.s18,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static TextStyle button = notoSansKR.copyWith(
    fontSize: FontSizes.s20,
    fontWeight: FontWeight.w600,
    color: UiColor.black,
    height: 1.25,
  );
}
