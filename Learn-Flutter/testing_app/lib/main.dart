import 'package:flutter/material.dart';
import 'package:testing_app/gradient_container.dart';

void main() {
  // const List<Color> colors = [
  //               Colors.indigo,
  //               Colors.lightBlue,
  //               Colors.indigo,
  //             ];
  const Color color1 = Colors.lightBlue;
  const Color color2 = Colors.indigo;
  // const Color color3 = Colors.black45;
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1,
          color2,
          // color3,
        ),
      ),
    ),
  );
}

/*
- assets/images/dice3.png
- assets/images/dice0.png
- assets/images/dice5.png 8
- assets/images/dice-1.png
- assets/images/dice-1.png
- assets/images/dice-1.png

 */
