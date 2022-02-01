import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const String userImage = "myFile/image/rezome.jpg";
const Color userColor = Colors.amber;
const Color resumeColor = Color(0xffffb803);
const Color projectColor = Color(0xff30a0a2);
const Color textBlackColor = Color(0xff000000);
const Color textWhiteColor = Color(0xffffffff);
Color textColor = const Color(0xff000000);
const Color backImage = Color(0xFF686868);
const Color selectTextColor = Color(0xFFE0AD50);

//them data lite
ThemeData liteThemeData = ThemeData(
  fontFamily: "jhenghei",
  primarySwatch: rPrimaryColor,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.normal,
      color: textBlackColor,
    ),
  ),
  scaffoldBackgroundColor: rPrimaryColor,
  backgroundColor: rPrimaryColor,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
  ),
);

//them data dark
ThemeData darkThemeData = ThemeData(
  fontFamily: "jhenghei",
  primarySwatch: rPrimaryColorD,
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.normal,
      color: textWhiteColor,
    ),
  ),
  scaffoldBackgroundColor: rPrimaryColorD,
  backgroundColor: rPrimaryColorD,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
  ),
);

//base color dark
Map<int, Color> colorCodesD = {
  50: const Color(0xff2b2e31),
  100: const Color(0xff2b2e31),
  200: const Color(0xff2b2e31),
  300: const Color(0xff2b2e31),
  400: const Color(0xff2b2e31),
  500: const Color(0xff2b2e31),
  600: const Color(0xff2b2e31),
  700: const Color(0xff2b2e31),
  800: const Color(0xff2b2e31),
  900: const Color(0xff2b2e31),
};
MaterialColor rPrimaryColorD = MaterialColor(0xff2b2e31, colorCodesD);

//base color lite
Map<int, Color> colorCodes = {
  50: const Color(0xFFF3F3F3),
  100: const Color(0xFFF3F3F3),
  200: const Color(0xFFF3F3F3),
  300: const Color(0xFFF3F3F3),
  400: const Color(0xFFF3F3F3),
  500: const Color(0xFFF3F3F3),
  600: const Color(0xFFF3F3F3),
  700: const Color(0xFFF3F3F3),
  800: const Color(0xFFF3F3F3),
  900: const Color(0xFFF3F3F3),
};
MaterialColor rPrimaryColor = MaterialColor(0xFFF3F3F3, colorCodes);

//toast
void rToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    webBgColor: "linear-gradient(to right, #4B4B4B, #4B4B4B)",
    timeInSecForIosWeb: 4,
  );
}
