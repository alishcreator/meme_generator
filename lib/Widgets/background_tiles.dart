import 'package:flutter/material.dart';

class BackgroungTiles extends StatelessWidget {
  Color color = Color.fromRGBO(190, 220, 244, 1);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 146,

          child: CircleAvatar(
            backgroundColor:color,
            minRadius: 157,
          ),
        ),
        Positioned(
          right:200 ,
          top: 200,

          child: CircleAvatar(
            backgroundColor:color,
            minRadius: 79,
          ),
        ),
        Positioned(
          right: -20,
          top: 350,
          child: CircleAvatar(
            backgroundColor:color,
            minRadius: 49,
          ),
        ),
        Positioned(
          left: 20,
          top: 380,
          child: CircleAvatar(
            backgroundColor:color,
            minRadius: 125,
          ),
        ),
        Positioned(
          right: -60,
          bottom: -70,
          child: CircleAvatar(
            backgroundColor:color,
            minRadius: 76,
          ),
        ),



      ],
    );
  }
}