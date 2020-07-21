import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ved_meme/Screens/templates.dart';

import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool buttonVisibility = false;
  bool mainScreenVisible = false;
  Timer timerCount;
  int start = 8;
  Animation<double> animation;
  AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    const oneSec = const Duration(seconds: 1);
    timerCount = new Timer.periodic(oneSec, (Timer timer) {
      setState(
        () {
          if (start < 2) {
            buttonVisibility = true;
            timerCount.cancel();
          } else if (start < 5) {
            if (!mainScreenVisible) {
              mainScreenVisible = true;
              controller.forward();
            }
            start--;
          } else {
            start = start - 1;
          }
        },
      );
    });

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    animation = Tween<double>(begin: 0, end: 220).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 0,
            top: -90,
            child: SvgPicture.asset(
              "image/top_curve.svg",
              height: 300,
              width: 400,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              "image/bottom_curve.svg",
              height: 123,
              width: 227,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Stack(
            // animation stack screen part
            children: <Widget>[
              Visibility(
                visible: !mainScreenVisible,
                child: Center(
                  child: Text(
                    "Loading...",
                    style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 5,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Center(
                child: Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: mainScreenVisible,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: animation.value,
                        height: animation.value,
                        child: FlareActor("animation/logo.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "laugh"),
                      ),
                      Text(
                        "VIRAL MEMES",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          letterSpacing: 5,
                        ),
                      ),
                      SizedBox(
                        height: 20,),
                    
                      Visibility(
                        visible: buttonVisibility,
                        child: Align(
                          
                          child: Padding(
                            padding:
                                EdgeInsets.only(right: 10, left: 10, bottom: 5),
                            child: FlatButton(
                              color: Colors.black,
                              onPressed: () {
                                print("This is a botton click");
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Templates()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                height: 40,
                                alignment: Alignment.center,
                                child: Text(
                                  "Let's Make a Meme",
                                  style: TextStyle(
                                      // color: Color.fromRGBO(255, 181, 108, 1),
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
