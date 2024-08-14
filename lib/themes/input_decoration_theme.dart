import 'package:flutter/material.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/commons/dimens.dart';



InputDecorationTheme kInputDecorationTheme() {
  return InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
    filled: true,
    fillColor: whiteColor,
    enabledBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: const BorderSide(
        width: 2.0,
        color: borderColor,
      ),
    ),
    focusedBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: const BorderSide(
        width: 2.0,
        color: blueColor,
      ),
    ),
    focusedErrorBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: const BorderSide(
        width: 0.0,
        color: redColor,
      ),
    ),
    contentPadding: const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),

    errorBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.0),
      borderSide: const BorderSide(
        width: 2.0,
        color: redColor,
      ),
    ),
    hintStyle: TextStyle(
      fontSize: fontSize16,
      color: grayColor,
    ),
    labelStyle: TextStyle(
      fontSize: fontSize16,
      color: darkGrayColor,
    ),
    errorStyle: TextStyle(
      fontSize: fontSize13,
      color: redColor,
    ),
  );
}
