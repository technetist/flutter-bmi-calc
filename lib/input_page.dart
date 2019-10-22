import 'package:bmi_calculator/icon_card.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;
const Color cardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color footerColor = Color(0xFFEB1555);
enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == GenderType.male
                            ? cardColor
                            : inactiveCardColor,
                        cardChild: IconCard(
                          iconContent: FontAwesomeIcons.mars,
                          iconText: "male",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      child: ReusableCard(
                        color: selectedGender == GenderType.female
                            ? cardColor
                            : inactiveCardColor,
                        cardChild: IconCard(
                          iconContent: FontAwesomeIcons.venus,
                          iconText: "female",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: cardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: cardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: cardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: footerColor,
              margin: EdgeInsets.only(top: bottomContainerHeight),
              width: double.infinity,
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
