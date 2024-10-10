import 'package:flutter/material.dart';
import 'package:widgets_app/config/route/app_routes.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: ThemeApp(5).getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
