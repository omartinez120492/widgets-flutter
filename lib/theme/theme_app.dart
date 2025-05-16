import 'package:flutter/material.dart';

class ThemeApp {
  static Color primary = Colors.pink;
  static Color darckColor = Colors.black;
  static ThemeData primaryTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: primary),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: primary),
      primaryIconTheme: IconThemeData(color: primary),
      textTheme: TextTheme(),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ButtonStyle( backgroundColor: WidgetStateColor.resolveWith( (Set <WidgetState>)=>Colors.blue ) )
      // )
    );
  }

  static ThemeData darckTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: darckColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: darckColor,
      ),
      iconTheme: IconThemeData(color: darckColor),
      primaryIconTheme: IconThemeData(color: darckColor),
      textTheme: TextTheme(),
    );
  }
}
