import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 40.0 * 2;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColor = inactiveCardColour;

  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == inactiveCardColour)
        maleCardColour = activeCardColor;
      else {
        maleCardColour = inactiveCardColour;
      }
    }


    if (gender == 2) {
      if (femaleCardColor == inactiveCardColour)
        femaleCardColor = activeCardColor;
      else
        femaleCardColor = inactiveCardColour;
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(1);
                    });
                  },
                  child: ReuseableCard(
                    colour: maleCardColour,
                    cardChild:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColour(2);
                        });
                      },
                      child: ReuseableCard(
                        colour: femaleCardColor,
                        cardChild:
                        IconContent(icon: FontAwesomeIcons.venus, label: 'Female'),
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
              child: ReuseableCard(
            colour: activeCardColor,
          )),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: ReuseableCard(
                colour: activeCardColor,
              )),
              Expanded(
                  child: ReuseableCard(
                colour: activeCardColor,
              )),
            ]),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ]));
  }
}

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(label,
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF8D8E98),
              )),
        ]);
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardChild});
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, //must be into BoxDecoration
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
