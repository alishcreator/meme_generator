import 'package:flutter/material.dart';

class CircleButtonAndText extends StatelessWidget {
  String text;
  bool isClicked = false;

  CircleButtonAndText(this.text, this.isClicked);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(spreadRadius: 0, blurRadius: 2, offset: Offset(0, 3))
              ],
              color: (isClicked)
                  ? Color.fromRGBO(20, 125, 230, 1.0)
                  : Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              (isClicked) ? Icons.check : Icons.add,
              color: (isClicked) ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            text,
            style: TextStyle(
                color: Color.fromRGBO(20, 125, 230, 1.0),
                fontWeight: FontWeight.bold,),
                
          ),
        ],
      ),
    );
  }
}
