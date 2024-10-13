import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/animated/animated_screen.dart';

import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentation/screens/screen/screens.dart';
import 'package:widgets_app/presentation/screens/Snackbars/snackbar_screen.dart';
import 'package:widgets_app/presentation/screens/ui_controls/ui_controls.dart';

/// The route configuration.
final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const ButtonScreen();
      },
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (BuildContext context, GoRouterState state) {
        return const CardsScreen();
      },
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (BuildContext context, GoRouterState state) =>
          const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar',
      name: Snackbarscreen.name,
      builder: (BuildContext context, GoRouterState state) =>
          const Snackbarscreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (BuildContext context, GoRouterState state) =>
          const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.name,
      builder: (BuildContext context, GoRouterState state) =>
          const UiControlsScreen(),
    ),
  ],
);
