import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/route/app_routes.dart';

class Slides {
  String title;
  String caption;
  String imageUrl;

  Slides(this.title, this.caption, this.imageUrl);
}

final listview = <Slides>[
  Slides(
      "Elige bien!",
      "Exercitation occaecat excepteur Lorem anim cupidatat. Officia eu amet aliquip ullamco qui. ",
      "assets/images/1.png"),
  Slides(
      "Entrega rapido!",
      "Consectetur velit pariatur laboris fugiat cillum quis elit nisi amet exercitation do cupidatat.",
      "assets/images/2.png"),
  Slides(
      "¡Comparte con tus amigos!",
      "Cillum eiusmod esse laborum cupidatat in laborum Lorem ut irure nostrud officia deserunt est. ",
      "assets/images/3.png")
];

class AppTutorial extends StatefulWidget {
  static const name = 'Turorial_Screen';

  const AppTutorial({super.key});

  @override
  State<AppTutorial> createState() => _AppTutorialState();
}

class _AppTutorialState extends State<AppTutorial> {
  final PageController pageviweController = PageController();
  bool endReach = false;

  @override
  void initState() {
    super.initState();
    pageviweController.addListener(() {
      final page = pageviweController.page ?? 0;
      if (!endReach && page >= (listview.length - 1.5)) {
        setState(() {
          endReach = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: pageviweController,
              physics: const BouncingScrollPhysics(),
              children: listview
                  .map(
                    (slideData) => _Slides(
                        slideData.title, slideData.caption, slideData.imageUrl),
                  )
                  .toList(),
            ),
            Positioned(
                right: 20,
                top: 40,
                child: TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('Salir'),
                )),
            endReach
                ? Positioned(
                    bottom: 30,
                    right: 30,
                    child: FadeInRight(
                        from: 15,
                        delay: const Duration(seconds: 1),
                        child: FilledButton(
                          onPressed: () => context.pop(),
                          child: const Text('Comenzar'),
                        )))
                : const SizedBox()
          ],
        ));
  }
}

class _Slides extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slides(this.title, this.caption, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final textTitle = Theme.of(context).textTheme.titleLarge;
    final textCap = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(
              title,
              style: textTitle,
            ),
            const SizedBox(height: 20),
            Text(
              caption,
              style: textCap,
            ),
          ],
        ),
      ),
    );
  }
}
