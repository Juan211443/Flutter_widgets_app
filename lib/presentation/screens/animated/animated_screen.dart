import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.black;
  double borderRadius = 10.0;

  // final colorsMap = <int, dynamic>{
  //   0: Colors.red,
  //   1: Colors.yellow,
  //   2: Colors.cyan,
  //   3: Colors.pink,
  //   4: Colors.green,
  //   5: Colors.grey,
  //   6: Colors.orange,
  //   7: Colors.purple,
  //   8: Colors.blue,
  //   9: Colors.brown,
  //   10: Colors.cyanAccent,
  //   11: Colors.teal,
  //   12: Colors.limeAccent,
  // };

  void changeShape() {
    final random = Random();

    width = random.nextInt(300) + 50;
    height = random.nextInt(600) + 50;
    // color = colorsMap[random.nextInt(12)];
    borderRadius = random.nextDouble() * 256;
    color = Color.fromRGBO(
      random.nextInt(225),
      random.nextInt(225),
      random.nextInt(225),
      1,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated container')),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutExpo,
          height: height <= 0 ? 0 : height,
          width: width <= 0 ? 0 : width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              borderRadius <= 0 ? 0 : borderRadius,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
