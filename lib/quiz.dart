import 'package:flutter/material.dart';
import './quizQ.dart';
import './result.dart';

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      'questionText': 'Q1. Everyone needs sleep, and whether you’re a six hours per night or a nine–hour kind of guy, it’s important to get a good kip. A good sleep can boost our mood, and likewise, a poor sleep can make us feel irritable and snappy.What is your sleep like at the moment?',
      'answers': [
        {'text': 'I sleep no longer than 7-8 hours a night and I do not nap during the day', 'score': 5},
        {'text': 'I sleep no longer than 10 hours in a 24-hour period including naps', 'score': 3},
        {'text': 'I sleep no longer than 12 hours in a 24-hour period including naps', 'score': 2},
        {'text': 'I sleep longer than 12 hours in a 24-hour period including naps', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. It can be hard to nod off when you are feeling wound up or pissed off, especially if there is something you are thinking about regularly when you are trying to fall asleep.How long does it usually take you to fall asleep?',
      'answers': [
        {'text': 'I never take longer than 30 minutes', 'score': 0},
        {'text': 'I take at least 30 minutes, less than half of the time', 'score': 2},
        {'text': 'I take at least 30 minutes, more than half of the time', 'score': 3},
        {
          'text':
          'I take more than 60 minutes, more than half of the time',
          'score': 5
        },
      ],
    },
    {
      'questionText': ' Q3. Feeling sad is a normal part of life, and sadness is an important part of a healthy, full range of emotions. How often do you feel sad, down, blue, hopeless or depressed?',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Less than half the time', 'score': 2},
        {'text': 'More than half the time', 'score': 3},
        {'text': 'Nearly all the time', 'score': 5},
      ],
    },
    {
      'questionText': 'Q4. Whether you call it self-confidence, bravado or swagger, a healthy self-image is an important trait for every man to possess. How do you view yourself?',
      'answers': [
        {'text': 'I see myself as equally worthwhile and deserving as other people', 'score': 10},
        {'text': 'I am more self-blaming than usual', 'score': -2},
        {'text': 'I largely believe that I cause problems for others', 'score': -2},
        {'text': 'I think almost constantly about major and minor defects in myself', 'score': -2},
      ],
    },
    {
      'questionText':
      'Q5. Your death and/or suicide. Do you think of them?',
      'answers': [
        {
          'text': 'Yes',
          'score': 5,
        },
        {'text': 'No', 'score': 0},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Psycare'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
