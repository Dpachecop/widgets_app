import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Snackbarscreen extends StatelessWidget {
  static const name = 'Snackbar_Screen';

  const Snackbarscreen({super.key});

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("¿Estas seguro?"),
          content: const Text(
              'Dolor Lorem nulla cillum ex elit deserunt fugiat commodo et nostrud. Aliqua id occaecat consectetur amet reprehenderit id laboris commodo exercitation enim ullamco nulla et occaecat. Lorem nisi cillum in reprehenderit deserunt aliquip aute ea. Irure exercitation deserunt et esse elit. Eiusmod in ipsum do veniam labore aliqua. Ad ex nulla esse labore irure sint sit officia qui ea mollit veniam deserunt nostrud. Proident id incididunt nulla quis amet eiusmod.'),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('cancelar'),
            ),
            FilledButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Aceptar'))
          ],
        );
      },
    );
  }

  void custonSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('hola mundo'),
      action: SnackBarAction(label: "ok", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      "Ad dolor in enim dolor duis sunt eu anim esse Lorem consectetur reprehenderit laboris. Do esse velit excepteur anim. Sit quis elit nisi elit adipisicing est laboris culpa mollit commodo eiusmod consequat amet. ")
                ]);
              },
              child: const Text('licenses'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Dialog'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          custonSnackbar(context);
        },
        label: const Text("snackbar"),
        icon: const Icon(Icons.adjust_rounded),
      ),
    );
  }
}
