import 'package:flutter/material.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/commons/dimens.dart';
import 'package:flutter_todo_app/themes/input_decoration_theme.dart';
import 'package:flutter_todo_app/themes/text_styles.dart';
import 'package:google_fonts/google_fonts.dart';




class CustomTheme {
  static ThemeData  lightTheme() {
    return ThemeData(
      useMaterial3: true,
        primaryColor: blueColor,
        scaffoldBackgroundColor: whiteColor,

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: whiteColor,// 4

          selectedIconTheme: IconThemeData(color: blueColor, size: 30),
          selectedItemColor: blueColor,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedIconTheme: IconThemeData(
            color: darkGrayColor
          ),
          unselectedItemColor: darkGrayColor,
        ),

        colorScheme: ThemeData().colorScheme.copyWith(
          primary: blueColor,
          secondary: whiteColor,
        ),
        appBarTheme:  AppBarTheme(
          elevation: 0.0,
          backgroundColor: whiteColor,
          iconTheme: const IconThemeData(color: darkGrayColor,size: 25.0),
           titleTextStyle: TextStyle(fontWeight: FontWeight.bold,
           fontSize: fontSize20,
               color: darkColor
           )
        ),
        //fontFamily: GoogleFonts.oxanium().fontFamily,
      // FloatingActionButton Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: blueColor,
        iconSize: fontSize20,
        shape: const CircleBorder(),

      ),

      // Button Theme
      buttonTheme: const ButtonThemeData(
        buttonColor: blueColor,
        textTheme: ButtonTextTheme.primary,
      ),

        inputDecorationTheme: kInputDecorationTheme(),
         textTheme:  appTextTheme,

        dividerColor: grayColor,
        hintColor: grayColor,
        //errorColor: kRedColor,

        // dialogBackgroundColor: Colors.blue,
        cardTheme: const CardTheme(
          color: whiteColor,
              elevation: 2.0
        ),

        iconTheme:  IconThemeData(size: fontSize24),
    );
  }
}