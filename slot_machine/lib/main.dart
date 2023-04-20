import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SlotMachine(),
      ),
    );
  }
}

class SlotMachine extends StatefulWidget {
  @override
  _SlotMachineState createState() => _SlotMachineState();
}

class _SlotMachineState extends State<SlotMachine> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  int _tapCount = 0;

  @override
  void initState() {
    _controller1 = AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _controller2 = AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _controller3 = AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _controller1.repeat();
    _controller2.repeat();
    _controller3.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            _tapCount++;
          });
          if (_tapCount == 1) {
            _controller1.stop();
          } else if (_tapCount == 2) {
            _controller2.stop();
          } else if (_tapCount == 3) {
            _controller3.stop();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Reel(controller: _controller1),
            Reel(controller: _controller2),
            Reel(controller: _controller3),
          ],
        ),
      ),
    );
  }
}

class Reel extends StatelessWidget {
  final AnimationController controller;
  Reel({required this.controller});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, __) {
        return Container(
          height: 100,
          width: 50,
          child: OverflowBox(
            maxHeight: 400,
            child: ClipRect(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (index == 5) {
                    return SizedBox(height: 20, child: Center(child: Text('🍒')));
                  } else if (index == 15) {
                    return SizedBox(height: 20, child: Center(child: Text('🍇')));
                  } else {
                    return SizedBox(height: 20, child: Center(child: Text('ð')));
                  }
                },
                itemCount: 20,
                controller: ScrollController(initialScrollOffset: 20 * (controller.value % 1)),
              ),
            ),
          ),
        );
      },
    );
  }
}
