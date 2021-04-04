import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 20) {
      resultText = 'You need therapy!';
      print(resultScore);
    } else if (resultScore >= 15) {
      resultText = 'Take care of yourself!';
      print(resultScore);
    } else if (resultScore >= 10) {
      resultText = 'Less stress, more care!';
    } else if (resultScore >= 1) {
      resultText = 'You are going good';
    } else {
      resultText = 'Enjoy your life!';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'Score ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ), //Text
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
          FlatButton(
            child: Text(
              'Head Back home',
            ), //Text
            textColor: Colors.blue,
            onPressed: resetHandler ,
          ),//FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
