import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // const StyledText({key}): super(key: key);
  const StyledText(this.text, {super.key});
  final String text;
  
  
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black45,
        fontSize: 35,
      ),
    );
  }
}
