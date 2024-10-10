import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtittle;
  final String url;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subtittle,
      required this.url,
      required this.icon});
}

const List<MenuItems> menuItemsList = [
  MenuItems(
      title: 'Buttons',
      subtittle: 'first widget',
      url: '/buttons',
      icon: Icons.accessibility_new_sharp),
  MenuItems(
      title: 'Cards ',
      subtittle: 'card widgets',
      url: '/cards',
      icon: Icons.card_membership_outlined),
  MenuItems(
      title: 'ProgressIndicator ',
      subtittle: 'inidica el progreso',
      url: '/progress',
      icon: Icons.refresh_outlined),
];
