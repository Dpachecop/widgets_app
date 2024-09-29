import 'package:flutter/material.dart';

const List colorList = [
  Colors.accents,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.blue,
  Colors.blueAccent,
  Colors.orange
];

class ThemeApp {
  int selectedColor = 0;

  ThemeApp(this.selectedColor)
      : assert(selectedColor >= 0, 'Selected color must be > 0'),
        assert(selectedColor < colorList.length,
            'Selectedcolor must be < ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
