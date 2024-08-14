import 'package:flutter/material.dart';
import 'package:flutter_todo_app/commons/colors.dart';

const _fontColor = darkColor;

const TextTheme appTextTheme = TextTheme(
  // Large display titles
  displayLarge:
      TextStyle(fontSize: 96.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Section headers
  displayMedium:
      TextStyle(fontSize: 60.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Subsection headers
  displaySmall: TextStyle(
      fontSize: 48.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Titles for individual components
  headlineMedium: TextStyle(
      fontSize: 34.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Smaller titles
  headlineSmall: TextStyle(
      fontSize: 24.0, fontWeight: FontWeight.bold, color: _fontColor),
  // Used for most headings
  titleLarge:
      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: _fontColor),
  // High-emphasis text
  titleMedium:
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Secondary text, lower emphasis
  titleSmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: _fontColor),
  // Large body text
  bodyLarge:
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Default body text
  bodyMedium:
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Text in buttons
  labelLarge:
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Captions for images, text fields, etc.
  bodySmall:
      TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Overline text, small labels
  labelSmall:
      TextStyle(fontSize: 10.0, fontWeight: FontWeight.w600, color: _fontColor),
);
