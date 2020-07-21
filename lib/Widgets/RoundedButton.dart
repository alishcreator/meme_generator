import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  final String text;
  RoundedButton(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 36,
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 181, 108, 1.0),
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              offset: Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 0),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
        ),
      ),
    );
  }
}
