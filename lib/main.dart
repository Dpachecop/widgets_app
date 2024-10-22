import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/route/app_routes.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/provider/dark_theme_provider.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDark = ref.watch(darkModeprovider);
    final colorSelected = ref.watch(indexColorProvider);
    return MaterialApp.router(
      title: 'Flutter Licenses',
      routerConfig: appRouter,
      theme: ThemeApp(colorSelected, isDark).getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
