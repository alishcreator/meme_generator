import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker_saver/image_picker_saver.dart';
import 'package:ved_meme/Models/TextModel.dart';
import 'package:ved_meme/Widgets/CurcularButtonAndText.dart';
import 'package:ved_meme/Widgets/RoundedButton.dart';
import 'package:ved_meme/Widgets/TextWithStroke.dart';
import 'package:ved_meme/Widgets/background_tiles.dart';
import 'package:ved_meme/Widgets/thanks_dialoge.dart';
import 'package:ved_meme/Widgets/tiles_bar.dart';
import 'package:ved_meme/Widgets/tiles_divider.dart';

import '../pick_image_screen.dart';
import '../text_picker.dart';

var scr = new GlobalKey();

class Temple1 extends StatefulWidget {
  @override
  _Temple1State createState() => _Temple1State();
}

// typedef FetchDateFromAlertDialog = Function(TextModel textModel);
class _Temple1State extends State<Temple1> with SingleTickerProviderStateMixin {
  FetchDateFromAlertDialog(TextModel textModel) {
    setState(() {
      text1Details = textModel;
      isTextPicked = true;
    });
  }

  @override
  void initState() {
    textalignment = Alignment.center;
  }

  Alignment textalignment = Alignment.center;
  var imagePath1;
  bool isImagePicked = false;
  bool isImageGalleryCamera = false;
  int count1 = 0;
  int countTextAlign = 0;

  bool isTextPicked = false;
  TextModel text1Details =
      new TextModel("Write Your Own Text", "impact", Colors.white, 18);
  bool isDone = false;

  BoxFit imageFit1 = BoxFit.cover;

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
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 150),
                      height: MediaQuery.of(context).size.height / 2,
                      width: double.infinity,
                      child: RepaintBoundary(
                        key: scr,
                        child: Stack(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                if (isImagePicked) {
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
                                  print("image 1 clicked:$count1");
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.all(8.0),
                                height: MediaQuery.of(context).size.height / 2,
                                width: double.infinity,
                                child: Card(
                                    elevation: 7,
                                    child: (imagePath1 != null)
                                        ? (!isImageGalleryCamera)
                                            ? Image.asset("image/" + imagePath1,
                                                fit: imageFit1)
                                            : Image.file(
                                                imagePath1,
                                                fit: imageFit1,
                                              )
                                        : Center(child: Text(""))),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  top: 30, bottom: 30, right: 20, left: 20),
                              height: MediaQuery.of(context).size.height / 2,
                              width: double.infinity,
                              alignment: textalignment,
                              child: TextStroke(text1Details, true),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TilesDivider("Required Elements"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            if (isTextPicked) {
                              if (countTextAlign < 3) {
                                countTextAlign++;
                              } else {
                                countTextAlign = 1;
                              }

                              if (countTextAlign == 1) {
                                setState(() {
                                  textalignment = Alignment.center;
                                });
                              } else if (countTextAlign == 2) {
                                setState(() {
                                  textalignment = Alignment.topCenter;
                                });
                              } else if (countTextAlign == 3) {
                                setState(() {
                                  textalignment = Alignment.bottomCenter;
                                });
                              }
                              print("image 1 clicked:$count1");
                            }
                          },
                          child: CircleButtonAndText("Text Alignment", false)),
                      GestureDetector(
                          onTap: () async {
                            // code for text inputting
                            var result = await Navigator.push(
                              context,
                              // Create the SelectionScreen in the next step.
                              MaterialPageRoute(
                                  builder: (context) => TextPickerScreen()),
                            );

                            setState(() {
                              // checking is the image is coming from camera-gllery or from assets
                              if (result != null) {
                              } else {}
                            });
                          },
//                          onTap: () async {
////                            ShowTextPickerDialoge(
////                                context, FetchDateFromAlertDialog);
//
//                          },

                          child: CircleButtonAndText("TEXT", isTextPicked)),
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
                              // checking is the image is coming from camera-gllery or from assets
                              if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera = true
                                    : isImageGalleryCamera = false;
                                imagePath1 = result[0];
                                (imagePath1 != null)
                                    ? isImagePicked = true
                                    : isImagePicked = false;
                              } else {}
                            });
                          },
                          child: CircleButtonAndText("IMAGE", isImagePicked)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (isImagePicked && isTextPicked)
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
                    child: RoundedButton("Complete & Save"),
                  ),
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

class PickTextScreen {}

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

// Text picker alert dialoge
