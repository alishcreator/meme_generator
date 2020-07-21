import 'package:flutter/material.dart';

class TilesDivider extends StatelessWidget {
  String text;
  TilesDivider(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 17, right: 17),
      width: double.infinity,
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(color: Color.fromRGBO(20, 125, 230, 1), fontWeight: FontWeight.bold),
            
          ),
          Expanded(
            child: Divider(
              indent: 7,
              thickness: 1,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
