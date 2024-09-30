import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
      ),
      body: const _ButtonsBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}

class _ButtonsBody extends StatelessWidget {
  const _ButtonsBody();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.woman),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.whatshot),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Elevated icon'),
              icon: const Icon(Icons.hot_tub_outlined),
            ),
            ElevatedButton.icon(
              onPressed: null,
              label: const Text('Elevated icon disabled'),
              icon: const Icon(Icons.hot_tub_outlined),
            ),
            FilledButton.icon(
              onPressed: () {},
              label: const Text('filled icon'),
              icon: const Icon(Icons.hail),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('outlined icon'),
              icon: const Icon(Icons.bed),
            ),
            TextButton.icon(
              onPressed: () {},
              label: const Text('text icon'),
              icon: const Icon(Icons.drafts),
            )
          ],
        ),
      ),
    );
  }
}
