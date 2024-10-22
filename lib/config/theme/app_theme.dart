import 'package:flutter/material.dart';

const List colorList = [
  Colors.limeAccent,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.blue,
  Colors.blueAccent,
  Colors.orange
];

class ThemeApp {
  int selectedColor = 0;
  bool isDarkMode = false;

  ThemeApp({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0, 'Selected color must be > 0'),
        assert(selectedColor < colorList.length,
            'Selectedcolor must be < ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));

  ThemeApp copyWith({bool? isDarkMode, int? selectedColor}) => ThemeApp(
        isDarkMode: isDarkMode ?? this.isDarkMode,
        selectedColor: selectedColor ?? this.selectedColor,
      );
}
