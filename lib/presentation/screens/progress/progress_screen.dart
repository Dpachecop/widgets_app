import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'Progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress indicator Screen'),
      ),
      body: _ProgressBody(),
    );
  }
}

class _ProgressBody extends StatelessWidget {
  const _ProgressBody();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('Circulas infinite progress'),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 3,
            backgroundColor: Colors.black26,
          ),
          SizedBox(height: 10),
          Text('Circulasr controlled progress'),
          _Progresscontrolled()
        ],
      ),
    );
  }
}

class _Progresscontrolled extends StatelessWidget {
  const _Progresscontrolled();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
        stream: Stream.periodic(Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 1),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 3,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: LinearProgressIndicator(
                  value: progressValue,
                ))
              ],
            ),
          );
        });
  }
}
