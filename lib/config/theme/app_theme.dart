import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.cyan,
  Colors.amber,
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.teal,
  Colors.pink,
  Colors.orange,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;
  AppTheme({this.isDarkmode = false, this.selectedColor = 0})
    : assert(
        selectedColor >= 0 || selectedColor <= colorList.length,
        'Select a color between 0 - 6',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkmode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(centerTitle: false),
  );
}
