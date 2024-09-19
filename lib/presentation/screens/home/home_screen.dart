import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('widgets App'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItemsList.length,
      itemBuilder: (BuildContext context, int index) {
        final listitem = menuItemsList[index];
        return _CustomTile(listitem: listitem);
      },
    );
  }
}

class _CustomTile extends StatelessWidget {
  const _CustomTile({
    required this.listitem,
  });

  final MenuItems listitem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      trailing: Icon(
        Icons.navigate_next_rounded,
        color: colors.primary,
      ),
      leading: Icon(
        listitem.icon,
        color: colors.primary,
      ),
      title: Text(listitem.title),
      subtitle: Text(listitem.subtittle),
      onTap: () {},
    );
  }
}
