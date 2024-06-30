import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;
  
  @override
  State<QuestionsScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.indigo.shade100,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            // style: const TextStyle(
            //   color: Colors.white,
            // ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getSuffledAnswers().map((answer) {
            return AnswerButton(
              answer: answer,
              onTap: () {
                answerQuestion(answer);
              },
            );
          })
          // AnswerButton(
          //   answer: currentQuestion.answers[0],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answer: currentQuestion.answers[1],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answer: currentQuestion.answers[2],
          //   onTap: () {},
          // ),
          // AnswerButton(
          //   answer: currentQuestion.answers[3],
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
