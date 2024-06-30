import 'package:flutter/material.dart';
// import 'package:testing_app/styled_text.dart';
import 'package:testing_app/dice_roller.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);
  // const GradientContainer({super.key, required this.colors});
  const GradientContainer(this.color1, this.color2, {super.key});

  // final List<Color> colors;
  final Color color1;
  final Color color2;
  // final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          // colors: colors,
          colors: [
            color1,
            color2,
          ],
          // begin: startAlignment,
          // end: endAlignment,
        ),
      ),
      child: const Center(
        // child: StyledText("Hey Its Dee Again !"),
        child: DiceRoller(),
      ),
    );
  }
}
