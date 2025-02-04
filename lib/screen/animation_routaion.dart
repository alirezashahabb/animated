import 'package:flutter/material.dart';

class AnimationRoutionScreen extends StatefulWidget {
  const AnimationRoutionScreen({super.key});

  @override
  State<AnimationRoutionScreen> createState() => _AnimationRoutionScreenState();
}

class _AnimationRoutionScreenState extends State<AnimationRoutionScreen> {
  double turns = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            turns += 0.4;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: AnimatedRotation(
          turns: turns,
          duration: Duration(seconds: 1),
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
