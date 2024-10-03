import 'package:flutter/material.dart';

List cardData = <Map<String, dynamic>>[
  {'elevation': 1.0, 'label': 'Elevation 1.0'},
  {'elevation': 2.0, 'label': 'Elevation 2.0'},
  {'elevation': 3.0, 'label': 'Elevation 3.0'},
  {'elevation': 4.0, 'label': 'Elevation 4.0'},
  {'elevation': 5.0, 'label': 'Elevation 5.0'},
];

class CardsScreen extends StatelessWidget {
  static const String name = 'card_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...cardData.map((cardData) => CardType1(
                label: cardData['label'], elevation: cardData['elevation'])),
            ...cardData.map((cardData) => CardType2(
                label: cardData['label'], elevation: cardData['elevation'])),
            ...cardData.map((cardData) => CardType3(
                label: cardData['label'], elevation: cardData['elevation'])),
            ...cardData.map((cardData) => CardType4(
                label: cardData['label'], elevation: cardData['elevation'])),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class CardType1 extends StatelessWidget {
  final String label;
  final double elevation;
  const CardType1({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(alignment: Alignment.topLeft, child: Text(label))
          ],
        ),
      ),
    );
  }
}

class CardType2 extends StatelessWidget {
  final String label;
  final double elevation;
  const CardType2({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          side: BorderSide(color: colors.primary)),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(alignment: Alignment.topLeft, child: Text('$label - 2'))
          ],
        ),
      ),
    );
  }
}

class CardType3 extends StatelessWidget {
  final String label;
  final double elevation;
  const CardType3({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Card(
      color: color.surfaceContainerHighest,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(alignment: Alignment.topLeft, child: Text('$label - filled')),
          ],
        ),
      ),
    );
  }
}

class CardType4 extends StatelessWidget {
  final String label;
  final double elevation;
  const CardType4({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
            ),
          ),
        ],
      ),
    );
  }
}
