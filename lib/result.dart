import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultSocre;
  final VoidCallback resetHandler;
  const Result(this.resultSocre, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultSocre <= 8) {
      resultText = 'You are so bad!';
    } else if (resultSocre <= 12) {
      resultText = 'You are ... strange?!';
    } else if (resultSocre <= 16) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You are awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
            ),
            child: Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
