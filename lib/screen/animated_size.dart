import 'package:flutter/material.dart';

class AnimatedSizeScreen extends StatefulWidget {
  const AnimatedSizeScreen({super.key});

  @override
  State<AnimatedSizeScreen> createState() => _AnimatedSizeScreenState();
}

class _AnimatedSizeScreenState extends State<AnimatedSizeScreen> {
  double mainhight = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mainhight = mainhight == 200 ? 400 : 200;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(12),
              color: Colors.red,
              child: AnimatedSize(
                duration: Duration(seconds: 1),
                child: SizedBox(
                  width: double.infinity,
                  height: mainhight,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
