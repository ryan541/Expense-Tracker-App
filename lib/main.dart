import 'package:flutter/material.dart';
import 'package:scheduler/widgets/expense.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 23, 113, 187),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 65, 71, 73),
);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark().copyWith(
      useMaterial3: true,
      colorScheme: kDarkColorScheme,
      // appBarTheme: const AppBarTheme().copyWith(
      //   backgroundColor: kDarkColorScheme.onPrimaryContainer,
      //   foregroundColor: kDarkColorScheme.primaryContainer,
      // ),
      cardTheme: const CardTheme().copyWith(
        color: kDarkColorScheme.secondaryContainer,
        margin: const EdgeInsets.all(16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: kDarkColorScheme.onPrimaryContainer,
          backgroundColor: kDarkColorScheme.primaryContainer,
        ),
      ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.all(16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.normal,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 25,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.normal,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 18,
            ),
          ),
    ),
    themeMode: ThemeMode.light,
    home: const Expenses(),
  ));
}
