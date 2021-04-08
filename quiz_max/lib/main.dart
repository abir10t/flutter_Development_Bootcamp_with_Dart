import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questions = const [
    {
      'questionText': 'Who is making the Web Standards?',
      'answers': [
        {'text': 'Mozila', 'score': 0},
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Apple', 'score': 0},
        {'text': 'The World Wide Web Consortium', 'score': 20},
      ],
    },
    {
      'questionText': 'What does HTML stand for?',
      'answers': [
        {'text': 'Hyper Text Markup Language', 'score': 20},
        {'text': 'Hyperlinks and Text Markup Language', 'score': 0},
        {'text': 'HOME TOOL', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the correct sequence of HTML tags for starting a webpage?',
      'answers': [
        {'text': 'Head, Title, HTML', 'score': 20},
        {'text': 'Title, Head, HTML', 'score': 0},
        {'text': 'HTML, Head, Title', 'score': 20},
      ],
    },
    {
      'questionText': 'Choose the correct HTML tag for the largest heading',
      'answers': [
        {'text': 'h1', 'score': 20},
        {'text': 'h0', 'score': 0},
        {'text': 'h10, Head, Title', 'score': 20},
      ],
    },
    {
      'questionText':
          'What is the correct HTML tag for inserting a line break?',
      'answers': [
        {'text': 'br', 'score': 20},
        {'text': 'hr', 'score': 0},
        {'text': 'tr, Head, Title', 'score': 0},
      ],
    },
  ];

  void _answerquestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questions[0]['questionText']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerquestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
