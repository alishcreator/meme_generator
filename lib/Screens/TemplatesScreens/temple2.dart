import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:ved_meme/Models/TextDialogeFun.dart';
import 'package:ved_meme/Models/TextModel.dart';
import 'package:ved_meme/Widgets/CurcularButtonAndText.dart';
import 'package:ved_meme/Widgets/RoundedButton.dart';
import 'package:ved_meme/Widgets/TextWithStroke.dart';
import 'package:ved_meme/Widgets/background_tiles.dart';
import 'package:ved_meme/Widgets/thanks_dialoge.dart';
import 'package:ved_meme/Widgets/tiles_bar.dart';
import 'package:ved_meme/Widgets/tiles_divider.dart';

import '../pick_image_screen.dart';

var scr = new GlobalKey();

class Temple2 extends StatefulWidget {
  @override
  _Temple2State createState() => _Temple2State();
}

class _Temple2State extends State<Temple2> {
  FetchDateOfText1(TextModel textModel) {
    setState(() {
      textDetails1 = textModel;
      isTextSelected1 = true;
    });
  }

  FetchDateOfText2(TextModel textModel) {
    setState(() {
      textDetails2 = textModel;
      isTextSelected2 = true;
    });
  }

  int count1 = 0;
  int count2 = 0;
  BoxFit imageFit1 = BoxFit.cover;
  BoxFit imageFit2 = BoxFit.cover;
  bool isImagePicked1 = false;

  bool isImagePicked2 = false;
  bool isImageGalleryCamera1 = false;
  bool isImageGalleryCamera2 = false;
  bool isTextSelected1 = false;

  bool isTextSelected2 = false;

  var imagePath1;

  var imagePath2;

  TextModel textDetails1 = new TextModel("Text 1.", "impact", Colors.white);

  TextModel textDetails2 = new TextModel("Text 2.", "impact", Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            BackgroungTiles(),
            TilesBar("Customize"),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 150),
                    height: MediaQuery.of(context).size.height / 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RepaintBoundary(
                        key: scr,
                        child: Card(
                          elevation: 7,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        height: (MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                2) /
                                            2,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(6),
                                        child: TextStroke(textDetails1, false),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: (MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2) /
                                                2 -
                                            30,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(6),
                                        child: TextStroke(textDetails2, false),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // images section!!!
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          if (isImagePicked1) {
                                            if (count1 < 3) {
                                              count1++;
                                            } else {
                                              count1 = 1;
                                            }

                                            if (count1 == 1) {
                                              setState(() {
                                                imageFit1 = BoxFit.contain;
                                              });
                                            } else if (count1 == 2) {
                                              setState(() {
                                                imageFit1 = BoxFit.cover;
                                              });
                                            } else if (count1 == 3) {
                                              setState(() {
                                                imageFit1 = BoxFit.fill;
                                              });
                                            }
                                          }
                                          print("image 1 clicked:$count1");
                                        },
                                        child: Container(
                                            color: Color.fromRGBO(
                                                190, 220, 244, 1),
                                            height: (MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2) /
                                                2,
                                            child: (imagePath1 != null)
                                                ? (!isImageGalleryCamera1)
                                                    ? Image.asset(
                                                        "image/" + imagePath1,
                                                        fit: imageFit1)
                                                    : Image.file(
                                                        imagePath1,
                                                        fit: imageFit1,
                                                      )
                                                : Center(child: Text(""))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          if (isImagePicked2) {
                                            if (count2 < 3) {
                                              count2++;
                                            } else {
                                              count2 = 1;
                                            }

                                            if (count2 == 1) {
                                              setState(() {
                                                imageFit2 = BoxFit.contain;
                                              });
                                            } else if (count2 == 2) {
                                              setState(() {
                                                imageFit2 = BoxFit.cover;
                                              });
                                            } else if (count2 == 3) {
                                              setState(() {
                                                imageFit2 = BoxFit.fill;
                                              });
                                            }
                                          }
                                          print("image 1 clicked:$count1");
                                        },
                                        child: Container(
                                            color: Color.fromRGBO(
                                                190, 220, 244, 1),
                                            height: (MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2) /
                                                2,
                                            child: (imagePath2 != null)
                                                ? (!isImageGalleryCamera2)
                                                    ? Image.asset(
                                                        "image/" + imagePath2,
                                                        fit: imageFit2)
                                                    : Image.file(
                                                        imagePath2,
                                                        fit: imageFit2,
                                                      )
                                                : Center(child: Text(""))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  TilesDivider("Required Elements"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () async {
                          ShowTextPickerDialoge(context, FetchDateOfText1);
                        },
                        child: CircleButtonAndText("TEXT1", isTextSelected1),
                      ),
                      GestureDetector(
                        onTap: () async {
                          ShowTextPickerDialoge(context, FetchDateOfText2);
                        },
                        child: CircleButtonAndText("TEXT2", isTextSelected2),
                      ),
                      Container(
                        height: 40,
                        child: VerticalDivider(
                          color: Colors.blue,
                          indent: 2,
                          thickness: 1,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          // code for text inputting
                          var result = await Navigator.push(
                            context,
                            // Create the SelectionScreen in the next step.
                            MaterialPageRoute(
                                builder: (context) => PickImageScreen()),
                          );

                          setState(() {
                            if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera1 = true
                                    : isImageGalleryCamera1 = false;
                                imagePath1 = result[0];
                                (imagePath1 != null)
                                    ? isImagePicked1 = true
                                    : isImagePicked1 = false;
                              } else {
                                
                              }
                          });
                        },
                        child: CircleButtonAndText("IMAGE1", isImagePicked1),
                      ),
                      GestureDetector(
                        onTap: () async {
                          // code for text inputting
                          var result = await Navigator.push(
                            context,
                            // Create the SelectionScreen in the next step.
                            MaterialPageRoute(
                                builder: (context) => PickImageScreen()),
                          );

                          setState(() {
                             if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera2 = true
                                    : isImageGalleryCamera2 = false;
                                imagePath2 = result[0];
                                (imagePath2 != null)
                                    ? isImagePicked2 = true
                                    : isImagePicked2 = false;
                              } else {
                                
                              }
                          });
                        },
                        child: CircleButtonAndText("IMAGE", isImagePicked2),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: (isImagePicked1 &&
                              isImagePicked2 &&
                              isTextSelected1 &&
                              isTextSelected2)
                          ? () {
                              print("this is a button click");
                              Fluttertoast.showToast(msg: "Saving...");
                              takescrshot();
                              ThankYouDialoge(context);
                            }
                          : () {
                              Fluttertoast.showToast(
                                  msg: "Some Elements are missing...");
                            },
                      child: RoundedButton("Complete & Save")),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

takescrshot() async {
  RenderRepaintBoundary boundary = scr.currentContext.findRenderObject();
  var image = await boundary.toImage();
  var byteData = await image.toByteData(format: ImageByteFormat.png);
  var pngBytes = byteData.buffer.asUint8List();
  print(pngBytes);

  var filePath =
      await ImagePickerSaver.saveFile(fileData: byteData.buffer.asUint8List());
  print(filePath);
}
