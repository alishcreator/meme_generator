import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ved_meme/Screens/TemplatesScreens/temple1.dart';
import 'package:ved_meme/Widgets/background_tiles.dart';
import 'package:ved_meme/Widgets/tiles_bar.dart';
import 'package:ved_meme/Widgets/tiles_divider.dart';
import 'dart:math';

import 'TemplatesScreens/temple2.dart';
import 'TemplatesScreens/temple3.dart';
import 'TemplatesScreens/temple4.dart';
import 'TemplatesScreens/temple5.dart';
import 'TemplatesScreens/temple7.dart';
import 'TemplatesScreens/temple8.dart';

class Templates extends StatefulWidget {
  Templates({Key key}) : super(key: key);

  @override
  _TemplatesState createState() => _TemplatesState();
}

class _TemplatesState extends State<Templates>
    with SingleTickerProviderStateMixin {
  AnimationController rotationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rotationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> Imagefile = [
      "temple1.png",
      "temple2.png",
      "temple3.png",
      "temple4.png",
      "temple5.png",
      "temple6.png",
      "temple7.png"
    ];
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BackgroungTiles(),
          Container(
            margin: EdgeInsets.only(top: 135),
            child: TilesDivider("Pick A Template"),
          ),
          // SizedBox( // just to create some space in the above of template portion
          //   height: 10,
          // ),

          Container(
              margin: EdgeInsets.only(top: 160),
              // templates portion
              child: GridView.builder(
                itemCount: Imagefile.length,
                gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2)),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Temple1()));
                      } else if (index == 1) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Temple2()));
                      } else if (index == 2) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Temple3()));
                      } else if (index == 3) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Temple4()));
                      } else if (index == 4) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Temple5()));
                      } else if (index == 5) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Temple7()));
                      } else if (index == 6) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Temple8()));
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          offset: Offset(0, 2),
                          color: Colors.black,
                          spreadRadius: -5,
                        )
                      ]),
                      child: Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "image/" + Imagefile[index],
                          ),
                        ),
                      ),
                      height: 100,
                      width: 100,
                    ),
                  );
                },
              )),
          
          TilesBar("Templates"),
          Positioned(
              top: -40,
              left: -60,
              child: GestureDetector(
                  onTap: () {
                    print("This is a tap!");
                    rotationController.forward(from: 0.7);
                  },
                  child: Container(
                    child: CircleAvatar(
                      radius: 85.0,
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                    ),
                  ))),
        ],
      ),
    );
  }
}
