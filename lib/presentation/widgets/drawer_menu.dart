import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/config/route/app_routes.dart';

class DrawerMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerMenu({super.key, required this.scaffoldKey});

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int navigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
        selectedIndex: navigationIndex,
        onDestinationSelected: (value) {
          setState(() {
            navigationIndex = value;
          });

          final menuItem = menuItemsList[value];

          context.push(menuItem.url);

          widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, hasNotch ? 0 : 20, 10, 15),
            child: const Text('Principal'),
          ),
          ...menuItemsList.sublist(0, 3).map(
                (e) => NavigationDrawerDestination(
                  icon: Icon(e.icon),
                  label: Text(e.title),
                ),
              ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 1),
            child: Divider(),
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 1),
              child: Text('More options')),
          ...menuItemsList.sublist(3).map(
                (e) => NavigationDrawerDestination(
                  icon: Icon(e.icon),
                  label: Text(e.title),
                ),
              ),
        ]);
  }
}
