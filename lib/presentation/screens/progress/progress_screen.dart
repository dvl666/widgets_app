import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Text('Cargando...'),
          SizedBox(height: 10,),
          CircularProgressIndicator(
            backgroundColor: Colors.black12,
          ),
          SizedBox(height: 10,),
          Text('Circular y linear indicator controlado'),
          SizedBox(height: 10,),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value<100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircularProgressIndicator(
              value: progressValue,
              strokeWidth: 2,
              backgroundColor: Colors.black12,
            ),
            SizedBox(width: 10,),
            Expanded(child: LinearProgressIndicator(
              value: progressValue,
            ))
            ],
          ),
        );
      },
    );
  }
}