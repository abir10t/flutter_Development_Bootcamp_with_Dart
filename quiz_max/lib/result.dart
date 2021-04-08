import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandaler;

  Result(this.resultScore,this.resetHandaler);

  String get resultPhrase {
    var x = 'your result is: ' + resultScore.toString();
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              )),
            FlatButton(child: Text('Restart Quiz'),
             textColor: Colors.blue,
             onPressed: resetHandaler,
            )
        ],
      ),
    );
  }
}
