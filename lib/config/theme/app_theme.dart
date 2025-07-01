import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.amber,
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.teal,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 || selectedColor <= colorList.length,
        'Select a color between 0 - 5',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(centerTitle: false),
  );
}
