import 'package:flutter/material.dart';

/// 🎨 NeoBrand Theme Builder
///
/// Centralized visual styles for Send Money app and related builds.
/// Includes primary color scheme, text styles, and input decoration themes.
/// Ready to support dark/light mode toggle and brand consistency.

final neoBrandTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  textTheme: const TextTheme(
    headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontSize: 14),
    labelLarge: TextStyle(fontWeight: FontWeight.w600),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFFF3F3F3),
    border: OutlineInputBorder(),
    hintStyle: TextStyle(color: Colors.grey),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(Colors.deepPurple),
    trackColor: MaterialStateProperty.all(Colors.deepPurple.shade100),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple[600],
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
    ),
  ),
);
