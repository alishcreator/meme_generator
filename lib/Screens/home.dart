import 'package:flutter/material.dart';
import 'package:ved_meme/Widgets/RoundedButton.dart';
import 'package:ved_meme/Widgets/background_tiles.dart';
import 'package:ved_meme/Widgets/tiles_bar.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMemesFound = false;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              BackgroungTiles(),
              TilesBar("Home"),

              // body section of home page
              (!isMemesFound) ? Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("No Memes Found!"),
                    RoundedButton("Make a Meme!!"),
                  ],
                )) : Text("Grid View"),
            ],
          ),
        ),
      ),
    );
  }
}
