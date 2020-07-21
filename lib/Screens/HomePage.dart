import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ved_meme/Widgets/RoundedButton.dart';
import 'package:ved_meme/Widgets/background_tiles.dart';
import 'package:ved_meme/Widgets/tiles_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isThereAnyMeme = false;
  List<String> image_names = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          BackgroungTiles(),
          TilesBar("Home"),
          Visibility(
            visible: !isThereAnyMeme,
            child: Container(
              // show is there no meme saved
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "No meme yet!",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        
                        
                      },
                      child: RoundedButton("Let's create a meme")),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();

  return directory.path;
}

Future<List<FileSystemEntity>> getAllFiles() async {
  final path = await _localPath;
  final myDir = new Directory(path+"/Pictures/");

List<FileSystemEntity> _images;
_images = myDir.listSync(recursive: true, followLinks: false);
  return _images;
}
