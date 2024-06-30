import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answer,
    required this.onTap,
  });

  final String answer;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        backgroundColor: Colors.black54,
        foregroundColor: Colors.white,
        // shape: BeveledRectangleBorder()
      ),
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
