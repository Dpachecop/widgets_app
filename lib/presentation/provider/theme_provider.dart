import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final darkModeprovider = StateProvider((ref) => false);

final colorListProvider = Provider((ref) => colorList);

final indexColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, ThemeApp>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<ThemeApp> {
  ThemeNotifier() : super(ThemeApp());

  void toogleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorindex) {
    state = state.copyWith(selectedColor: colorindex);
  }
}
