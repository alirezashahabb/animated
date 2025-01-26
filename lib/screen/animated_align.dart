import 'package:flutter/material.dart';

class AnimatedAlignScreen extends StatefulWidget {
  const AnimatedAlignScreen({super.key});

  @override
  State<AnimatedAlignScreen> createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {
  bool isRightTp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isRightTp = !isRightTp;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.all(12),
          width: double.infinity,
          height: 300,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: isRightTp ? Alignment.topRight : Alignment.bottomLeft,
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
