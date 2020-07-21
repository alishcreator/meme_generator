import 'package:flutter/material.dart';
import 'package:ved_meme/Models/TextModel.dart';

class TextStroke extends StatelessWidget {
  bool isStroke;
  TextModel textDetails;
  TextStroke(this.textDetails, this.isStroke);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: (isStroke)
            ? Stack(
                children: <Widget>[
                  Text(
                    textDetails.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "impact",
                      foreground: Paint()..color = textDetails.color,
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    textDetails.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "impact",
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 0.8
                        ..color = Colors.black,
                      fontSize: 26,
                    ),
                  ),
                ],
              )
            : Text(
                textDetails.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "impact",
                  color: Colors.black,
                  fontSize: 26,
                ),
              ));
  }
}
