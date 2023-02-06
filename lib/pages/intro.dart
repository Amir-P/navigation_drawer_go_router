import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          const Text('Intro'),
          ElevatedButton(
              onPressed: () => context.go('/'), child: const Text('Skip')),
        ],
      ),
    );
  }
}
