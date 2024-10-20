import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/provider/dark_theme_provider.dart';

class ControlThemeScreen extends ConsumerWidget {
  static const name = "Control_theme_screen";
  const ControlThemeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bool darkMode = ref.watch(darkModeprovider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Elige tu tema favorito'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: FadeInRight(
                  animate: true,
                  curve: Curves.easeInBack,
                  child: darkMode
                      ? const Icon(Icons.light_mode_outlined)
                      : const Icon(Icons.dark_mode_outlined)))
        ],
      ),
      body: const ControlThemeBody(),
    );
  }
}

class ControlThemeBody extends ConsumerWidget {
  const ControlThemeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final List colors = ref.watch(colorListProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        final Color color = colors[index];
        return RadioListTile(
          activeColor: color,
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          value: index,
          groupValue: 3,
          onChanged: (value) {},
        );
      },
    );
  }
}
