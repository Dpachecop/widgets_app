import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'UiControlsScreen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI controls '),
      ),
      body: const UiControlsView(),
    );
  }
}

class UiControlsView extends StatefulWidget {
  const UiControlsView({
    super.key,
  });

  @override
  State<UiControlsView> createState() => _UiControlsViewState();
}

enum ValuesTp { carro, bus, transcaribe, mototaxi }

class _UiControlsViewState extends State<UiControlsView> {
  ValuesTp val = ValuesTp.mototaxi;

  bool isDevelop = false;
  bool wantB = false;
  bool wantl = false;
  bool wantD = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('ON or OFF develover mode'),
          value: isDevelop,
          onChanged: (value) => setState(() {
            isDevelop = !isDevelop;
          }),
        ),
        ExpansionTile(
          title: const Text('metodos de viaje'),
          subtitle: const Text('Elija con que quiere viajar'),
          children: [
            RadioListTile(
              title: const Text('Bus'),
              subtitle: const Text('Viajar en bus'),
              value: ValuesTp.bus,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = ValuesTp.bus;
                });
              },
            ),
            RadioListTile(
              title: const Text('Transcaribe'),
              subtitle: const Text('Viajar en Transcaribe'),
              value: ValuesTp.transcaribe,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = ValuesTp.transcaribe;
                });
              },
            ),
            RadioListTile(
              title: const Text('Carro'),
              subtitle: const Text('Viajar en Carro'),
              value: ValuesTp.carro,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = ValuesTp.carro;
                });
              },
            ),
            RadioListTile(
              title: const Text('Mototaxi'),
              subtitle: const Text('Viajar en Mototaxi'),
              value: ValuesTp.mototaxi,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = ValuesTp.mototaxi;
                });
              },
            )
          ],
        ),
        ExpansionTile(
          initiallyExpanded: true,
          title: const Text('Opciones de comida'),
          children: [
            CheckboxListTile(
              title: const Text('Breakfast?'),
              value: wantB,
              onChanged: (value) => setState(() {
                wantB = !wantB;
              }),
            ),
            CheckboxListTile(
              title: const Text('Lunch?'),
              value: wantl,
              onChanged: (value) => setState(() {
                wantl = !wantl;
              }),
            ),
            CheckboxListTile(
              title: const Text('Dinner?'),
              value: wantD,
              onChanged: (value) => setState(() {
                wantD = !wantD;
              }),
            )
          ],
        )
      ],
    );
  }
}
