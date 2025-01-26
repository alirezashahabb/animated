import 'package:flutter/material.dart';

class AnimatedSwicherScreen extends StatefulWidget {
  const AnimatedSwicherScreen({super.key});

  @override
  State<AnimatedSwicherScreen> createState() => _AnimatedSwicherScreenState();
}

class _AnimatedSwicherScreenState extends State<AnimatedSwicherScreen> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              isFirst = !isFirst;
            });
          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: AnimatedSwitcher(
              duration: Duration(seconds: 2),
              child: isFirst
                  ? Container(
                      key: ValueKey(1),
                      color: Colors.red,
                      height: 200,
                    )
                  : Container(
                      key: ValueKey(2),
                      color: Colors.amberAccent,
                      height: 200,
                    )),
        ));
  }
}
