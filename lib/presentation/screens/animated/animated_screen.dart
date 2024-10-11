import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const String name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double heigth = 50;
  double border = 10.0;
  Color color = Colors.blue;

  void changeShape() {
    final random = Random();

    width = random.nextInt(300) + 120;
    heigth = random.nextInt(400) + 120;
    border = random.nextInt(100) + 20;
    color = Color.fromRGBO(random.nextInt(255) + 1, random.nextInt(255) + 1,
        random.nextInt(255) + 1, 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated contaniner'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.elasticOut,
          width: width <= 0 ? 0 : width,
          height: heigth <= 0 ? 0 : heigth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(border <= 0 ? 0 : border),
            color: color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
