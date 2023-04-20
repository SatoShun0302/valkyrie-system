import 'package:flutter/material.dart';
import 'dart:math';

class Slot extends StatefulWidget {
  Slot({Key? key}) : super(key: key);

  @override
  State<Slot> createState() => _Slot();
}

class _Slot extends State<Slot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  bool isStopped = false;
  var element = 0;
  var random = new Random();
  var elements = [
    Icons.star,
    Icons.thumb_up,
    Icons.fastfood,
    Icons.directions_run,
    Icons.accessibility
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..addListener(() {
      setState(() {});
    });

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slot'),
      ),
      body: GestureDetector(
        onTap: () {
          if (!isStopped) {
            isStopped = true;
            _controller.stop();

            element = random.nextInt(elements.length);
            setState(() {});
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: _animation.value * 2 * pi,
              child: Icon(
                elements[element],
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
