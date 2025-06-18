import 'package:flutter/material.dart';
import 'package:get/get.dart';

ThemeData light = ThemeData(
  fontFamily: Get.locale == Locale('en') ? 'EnglishFont' : 'KhmerFont',
  colorScheme: ColorScheme.light(
    surface: Color(0xFF282C33),
    primary: Color(0xFFC778DD),
    tertiary: Color(0xFFFFFFFF),
    secondary: Color(0xFFABB2BF),
  ),
);
