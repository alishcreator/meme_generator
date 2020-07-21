import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker_saver/image_picker_saver.dart';

class PickImageScreen extends StatefulWidget {
  @override
  _PickImageScreenState createState() => _PickImageScreenState();
}

class _PickImageScreenState extends State<PickImageScreen> {
  bool isImageFromGelleryCamer = false;

  Future getImageGallery() async {
    var image = await ImagePickerSaver.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        isImageFromGelleryCamer = true;
        Navigator.of(context).pop([image, true]);
      });
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.broken_image),
              onPressed: getImageGallery,
            ),
          ],
          title: Text(
            "Pick Image",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text("Trending"),
              ),
              Tab(
                child: Text("Boys"),
              ),
              Tab(
                child: Text("Girls"),
              ),
              Tab(
                child: Text("Babies"),
              ),
              Tab(
                child: Text("Animals"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Trending(),
            Boy(),
            Girls(),
            Babies(),
            Animals(),
          ],
        ),
      ),
    );
  }
}

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  String DisplayExOh = "";
  List<String> imagePath = [
    "t1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 86,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, ["t" + (index + 1).toString() + ".jpg", false]);
            },
            child: Container(
              child: Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage(
                        "image/t" + (index + 1).toString() + ".jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Girls extends StatefulWidget {
  @override
  _GirlsState createState() => _GirlsState();
}

class _GirlsState extends State<Girls> {
  String DisplayExOh = "";
  List<String> imagePath = [
    "g1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 34,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, ["g" + (index + 1).toString() + ".jpg", false]);
            },
            child: Container(
              child: Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage(
                        "image/g" + (index + 1).toString() + ".jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Boy extends StatefulWidget {
  @override
  _BoyState createState() => _BoyState();
}

class _BoyState extends State<Boy> {
  String DisplayExOh = "";
  List<String> imagePath = [
    "b1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 135,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, ["b" + (index + 1).toString() + ".jpg", false]);
            },
            child: Container(
              child: Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage(
                        "image/b" + (index + 1).toString() + ".jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  List<String> imagePath = ["a1.jpg"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 92,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, ["a" + (index + 1).toString() + ".jpg", false]);
            },
            child: Container(
              child: Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage(
                        "image/a" + (index + 1).toString() + ".jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Babies extends StatefulWidget {
  Babies({Key key}) : super(key: key);

  @override
  _BabiesState createState() => _BabiesState();
}

class _BabiesState extends State<Babies> {
  List<String> imagePath = [
    "c1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: 23,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pop(
                  context, ["c" + (index + 1).toString() + ".jpg", false]);
            },
            child: Container(
              child: Center(
                child: Card(
                  elevation: 10,
                  child: Container(
                    child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage(
                        "image/c" + (index + 1).toString() + ".jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
