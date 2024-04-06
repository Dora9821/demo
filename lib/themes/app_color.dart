import 'package:flutter/material.dart';

class AppColor {
  final Color primary;
  final Color secondary;
  final Color boldBackground;
  final Color lightBackground;

  AppColor._(
      this.primary, this.secondary, this.boldBackground, this.lightBackground);

  factory AppColor.blue() => AppColor._(
        const Color(0xff96B6C5),
        const Color(0xffADC4CE),
        const Color(0xffEEE0C9),
        const Color(0xffF1F0E8),
      );

  factory AppColor.green() => AppColor._(
        const Color(0xffE3FDFD),
        const Color(0xffCBF1F5),
        const Color(0xffA6E3E9),
        const Color(0xff71C9CE),
      );
}
