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

class Temple8 extends StatefulWidget {
  @override
  _Temple8State createState() => _Temple8State();
}

class _Temple8State extends State<Temple8> {
  FetchDateFromAlertDialog(TextModel textModel) {
    setState(() {
      text1Details = textModel;
      isTextPicked = true;
    });
  }

  bool isTextPicked = false;
  bool isImagePicked1 = false;
  bool isImagePicked2 = false;
  bool isImagePicked3 = false;
  bool isImagePicked4 = false;
  bool isImagePicked5 = false;
  bool isImagePicked6 = false;
  var imagePath1;
  var imagePath2;
  var imagePath3;
  var imagePath4;
  var imagePath5;
  var imagePath6;
  bool isImageGalleryCamera1 = false;
  bool isImageGalleryCamera2 = false;
  bool isImageGalleryCamera3 = false;
  bool isImageGalleryCamera4 = false;
  bool isImageGalleryCamera5 = false;
  bool isImageGalleryCamera6 = false;
  BoxFit imageFit1 = BoxFit.cover;
  BoxFit imageFit2 = BoxFit.cover;
  BoxFit imageFit3 = BoxFit.cover;
  BoxFit imageFit4 = BoxFit.cover;
  BoxFit imageFit5 = BoxFit.cover;
  BoxFit imageFit6 = BoxFit.cover;

  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;
  int count5 = 0;
  int count6 = 0;

  TextModel text1Details =
      new TextModel("Write Your Own Text", "impact", Colors.white);
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
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
                                            height: 130,
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
                                      flex: 1,
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
                                            height: 130,
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
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          if (isImagePicked3) {
                                            if (count3 < 3) {
                                              count3++;
                                            } else {
                                              count3 = 1;
                                            }

                                            if (count3 == 1) {
                                              setState(() {
                                                imageFit3 = BoxFit.contain;
                                              });
                                            } else if (count3 == 2) {
                                              setState(() {
                                                imageFit3 = BoxFit.cover;
                                              });
                                            } else if (count3 == 3) {
                                              setState(() {
                                                imageFit3 = BoxFit.fill;
                                              });
                                            }
                                          }
                                          print("image 1 clicked:$count1");
                                        },
                                        child: Container(
                                            color: Color.fromRGBO(
                                                190, 220, 244, 1),
                                            height: 130,
                                            child: (imagePath3 != null)
                                                ? (!isImageGalleryCamera3)
                                                    ? Image.asset(
                                                        "image/" + imagePath3,
                                                        fit: imageFit3)
                                                    : Image.file(
                                                        imagePath3,
                                                        fit: imageFit3,
                                                      )
                                                : Center(child: Text(""))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                height: 70,
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(6),
                                child: TextStroke(text1Details, false),
                              ),

                              Flexible(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          if (isImagePicked4) {
                                            if (count4 < 3) {
                                              count4++;
                                            } else {
                                              count4 = 1;
                                            }

                                            if (count4 == 1) {
                                              setState(() {
                                                imageFit4 = BoxFit.contain;
                                              });
                                            } else if (count4 == 2) {
                                              setState(() {
                                                imageFit4 = BoxFit.cover;
                                              });
                                            } else if (count4 == 3) {
                                              setState(() {
                                                imageFit4 = BoxFit.fill;
                                              });
                                            }
                                          }
                                          print("image 1 clicked:$count1");
                                        },
                                        child: Container(
                                            color: Color.fromRGBO(
                                                190, 220, 244, 1),
                                            height: 130,
                                            child: (imagePath4 != null)
                                                ? (!isImageGalleryCamera4)
                                                    ? Image.asset(
                                                        "image/" + imagePath4,
                                                        fit: imageFit4)
                                                    : Image.file(
                                                        imagePath4,
                                                        fit: imageFit4,
                                                      )
                                                : Center(child: Text(""))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          if (isImagePicked1) {
                                            if (count5 < 3) {
                                              count5++;
                                            } else {
                                              count5 = 1;
                                            }

                                            if (count5 == 1) {
                                              setState(() {
                                                imageFit5 = BoxFit.contain;
                                              });
                                            } else if (count5 == 2) {
                                              setState(() {
                                                imageFit5 = BoxFit.cover;
                                              });
                                            } else if (count5 == 3) {
                                              setState(() {
                                                imageFit5 = BoxFit.fill;
                                              });
                                            }
                                          }
                                          print("image 1 clicked:$count1");
                                        },
                                        child: Container(
                                            color: Color.fromRGBO(
                                                190, 220, 244, 1),
                                            height: 130,
                                            child: (imagePath5 != null)
                                                ? (!isImageGalleryCamera5)
                                                    ? Image.asset(
                                                        "image/" + imagePath5,
                                                        fit: imageFit5)
                                                    : Image.file(
                                                        imagePath5,
                                                        fit: imageFit5,
                                                      )
                                                : Center(child: Text(""))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: GestureDetector(
                                        onTap: () {
                                          if (isImagePicked1) {
                                            if (count6 < 3) {
                                              count6++;
                                            } else {
                                              count6 = 1;
                                            }

                                            if (count6 == 1) {
                                              setState(() {
                                                imageFit6 = BoxFit.contain;
                                              });
                                            } else if (count6 == 2) {
                                              setState(() {
                                                imageFit6 = BoxFit.cover;
                                              });
                                            } else if (count6 == 3) {
                                              setState(() {
                                                imageFit6 = BoxFit.fill;
                                              });
                                            }
                                          }
                                          print("image 1 clicked:$count1");
                                        },
                                        child: Container(
                                            color: Color.fromRGBO(
                                                190, 220, 244, 1),
                                            height: 130,
                                            child: (imagePath6 != null)
                                                ? (!isImageGalleryCamera6)
                                                    ? Image.asset(
                                                        "image/" + imagePath6,
                                                        fit: imageFit6)
                                                    : Image.file(
                                                        imagePath6,
                                                        fit: imageFit6,
                                                      )
                                                : Center(child: Text(""))),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // images section!!!
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  TilesDivider("Required Elements"),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () async {
                            ShowTextPickerDialoge(
                                context, FetchDateFromAlertDialog);
                          },
                          child: CircleButtonAndText("TEXT1", isTextPicked),
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
                              // checking is the image is coming from camera-gllery or from assets
                              if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera1 = true
                                    : isImageGalleryCamera1 = false;
                                imagePath1 = result[0];
                                (imagePath1 != null)
                                    ? isImagePicked1 = true
                                    : isImagePicked1 = false;
                              } else {}
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
                              // checking is the image is coming from camera-gllery or from assets
                              if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera2 = true
                                    : isImageGalleryCamera2 = false;
                                imagePath2 = result[0];
                                (imagePath2 != null)
                                    ? isImagePicked2 = true
                                    : isImagePicked2 = false;
                              } else {}
                            });
                          },
                          child: CircleButtonAndText("IMAGE2", isImagePicked2),
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
                              // checking is the image is coming from camera-gllery or from assets
                              if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera3 = true
                                    : isImageGalleryCamera3 = false;
                                imagePath3 = result[0];
                                (imagePath3 != null)
                                    ? isImagePicked3 = true
                                    : isImagePicked3 = false;
                              } else {}
                            });
                          },
                          child: CircleButtonAndText("IMAGE3", isImagePicked3),
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
                              // checking is the image is coming from camera-gllery or from assets
                              if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera4 = true
                                    : isImageGalleryCamera4 = false;
                                imagePath4 = result[0];
                                (imagePath4 != null)
                                    ? isImagePicked4 = true
                                    : isImagePicked4 = false;
                              } else {}
                            });
                          },
                          child: CircleButtonAndText("IMAGE4", isImagePicked4),
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
                              // checking is the image is coming from camera-gllery or from assets
                              if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera5 = true
                                    : isImageGalleryCamera5 = false;
                                imagePath5 = result[0];
                                (imagePath5 != null)
                                    ? isImagePicked5 = true
                                    : isImagePicked5 = false;
                              } else {}
                            });
                          },
                          child: CircleButtonAndText("IMAGE5", isImagePicked5),
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
                               // checking is the image is coming from camera-gllery or from assets
                              if (result != null) {
                                (result[1])
                                    ? isImageGalleryCamera6 = true
                                    : isImageGalleryCamera6 = false;
                                imagePath6 = result[0];
                                (imagePath6 != null)
                                    ? isImagePicked6 = true
                                    : isImagePicked6 = false;
                              } else {}
                            });
                          },
                          child: CircleButtonAndText("IMAGE6", isImagePicked6),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                      onTap: (isImagePicked1 &&
                              isImagePicked2 &&
                              isImagePicked3 &&
                              isImagePicked4 &&
                              isImagePicked5 &&
                              isImagePicked6 &&
                              isTextPicked)
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
