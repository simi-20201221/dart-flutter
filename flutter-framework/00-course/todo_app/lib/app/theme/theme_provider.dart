import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateProvider<ThemeData>((ref) {
  return ThemeData(
      fontFamily: 'Poppins',
      primaryColor: Colors.green,
      accentColor: Colors.greenAccent,
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8), borderSide: BorderSide()),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.greenAccent,
          padding: EdgeInsets.all(16),
        ),
      ));
});
