// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
// import 'package:quizzler_flutter/question.dart';
// import 'question.dart';
import 'quizbrain.dart';

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scorekeeper = [];

  QuizBrain quizBrain = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(
                  () {
                    bool correctAnswer = quizBrain.getQuestionAnswer();
                    if (correctAnswer == true) {
                      scorekeeper.add(correctAns());
                    } else {
                      scorekeeper.add(wrongAns());
                    }
                    quizBrain.nextQuestion();
                  },
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(
                  () {
                    bool correctAnswer = quizBrain.getQuestionAnswer();
                    if (correctAnswer == false) {
                      scorekeeper.add(correctAns());
                    } else {
                      scorekeeper.add(wrongAns());
                    }
                    quizBrain.nextQuestion();
                  },
                );
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        ),
      ],
    );
  }
}

Icon correctAns() {
  return Icon(
    Icons.check,
    color: Colors.green[500],
  );
}

Icon wrongAns() {
  return Icon(
    Icons.close,
    color: Colors.red[500],
  );
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
