import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class TilesBar extends StatelessWidget {
  String msg;
  TilesBar(this.msg);

  Color color = Color.fromRGBO(190, 220, 244, 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 10),
              color: Color.fromRGBO(20, 125, 230, 1),
              child: Text(
                msg,
                style: TextStyle(
                  color: color,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              height: 80,
              width: double.infinity,
            ),
          ),
          Positioned(
            top: -40,
            left: -60,
            child: Container(
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(85),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.black, blurRadius: 5, spreadRadius: 2)
                  ]),
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(20, 125, 230, 1),
                radius: 85.0,
                child: CircleAvatar(
                  radius: 75,
                  // backgroundColor: Color.fromRGBO(190, 220, 244, 1),
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: FlareActor("animation/logo.flr",
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        animation: "laugh"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
