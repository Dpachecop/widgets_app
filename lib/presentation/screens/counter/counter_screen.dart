import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/provider/counter_provider.dart';
import 'package:widgets_app/presentation/provider/dark_theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = '  Counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final int id = ref.watch(counterprovider);
    final bool darkMode = ref.watch(darkModeprovider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(darkModeprovider.notifier).update(
                  (state) {
                    return !darkMode;
                  },
                );
              },
              icon: FadeInRight(
                  animate: true,
                  curve: Curves.easeInBack,
                  child: darkMode
                      ? const Icon(Icons.light_mode_outlined)
                      : const Icon(Icons.dark_mode_outlined)))
        ],
      ),
      body: Center(
        child: Text('VALOR: $id'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterprovider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
