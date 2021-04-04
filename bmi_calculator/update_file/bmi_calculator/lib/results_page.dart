import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(child: Container(
            child: Text(
              'Your Result is 18.3',

            ),
          )),

        ],
      )
    );

  }

}
