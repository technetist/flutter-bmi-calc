import 'package:flutter/material.dart';

const TextStyle iconTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class IconCard extends StatelessWidget {
  IconCard({@required this.iconContent, this.iconText});

  final IconData iconContent;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.iconContent,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          this.iconText.toUpperCase(),
          style: iconTextStyle,
        ),
      ],
    );
  }
}
