import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task1/themes/colors/lightcolors.dart';

class MyTheme {
  ///////////////////////
  //////////////////////
  /////////////////////
  ///light theme data
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: LightColors.scaffoldColor,
    //////////
    ///color scheme
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: LightColors.primary,
      onPrimary: LightColors.primary.withOpacity(0.3),
      secondary: LightColors.secondary,
      onSecondary: LightColors.secondary.withOpacity(0.3),
      error: LightColors.primary,
      onError: LightColors.primary.withOpacity(0.4),
      background: LightColors.backGroundColor,
      onBackground: LightColors.backGroundColor.withOpacity(0.3),
      surface: LightColors.textcolor,
      onSurface: LightColors.textcolor.withOpacity(0.4),
    ),
    primaryColorLight: LightColors.primary,
    primaryColorDark: LightColors.secondary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    //////////////
    ///list tile theme
    listTileTheme: ListTileThemeData(
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      enableFeedback: true,
      tileColor: LightColors.backGroundColor,
      textColor: LightColors.textcolor,
      iconColor: LightColors.textcolor,
    ),
    ////////////////
    //appbar theme
    appBarTheme: AppBarTheme(
      backgroundColor: LightColors.primary,
      elevation: 0,
      iconTheme: IconThemeData(
        color: LightColors.scaffoldColor,
      ),
      titleTextStyle: TextStyle(
        color: LightColors.scaffoldColor,
        fontSize: 18,
      ),
    ),
    /////////////////////
    //text theme
    textTheme: GoogleFonts.varelaRoundTextTheme(),
    //////////////////
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      // fillColor: LightColors.backGroundColor,
      // filled: true,

      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,

      border: InputBorder.none,
      hintStyle: TextStyle(
        color: LightColors.textcolor.withOpacity(0.3),
      ),
      suffixIconColor: LightColors.textcolor.withOpacity(0.3),
    ),
    //////////////
    ///text button theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              22,
            ),
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(
            color: LightColors.primary,
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          Colors.transparent,
        ),
      ),
    ),
    /////////////////////////
    ///elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
              side: BorderSide(color: LightColors.primary),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            LightColors.primary,
          )),
    ),
    ///////////////////
    ///outlined button theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.transparent,
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: LightColors.primary,
              width: 2,
            ),
          )),
    ),
    //////////////////
    ///text selection theme in texfield
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: LightColors.textcolor.withOpacity(0.3),
      selectionHandleColor: LightColors.textcolor.withOpacity(0.3),
      selectionColor: LightColors.textcolor.withOpacity(0.3),
    ),
    /////////////////////
    ///dialog theme
    dialogTheme: DialogTheme(
      backgroundColor: LightColors.backGroundColor,
      elevation: 4,
      contentTextStyle: TextStyle(
          fontSize: 16, color: LightColors.textcolor.withOpacity(0.3)),
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: LightColors.textcolor,
      ),
    ),
  );
}
