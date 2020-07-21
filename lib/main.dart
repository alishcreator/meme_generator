

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:ved_meme/Screens/splash_screen.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color.fromRGBO(227, 237, 247, 1.0),
      body: Stack(
        children: <Widget>[
          SplashScreen(),
          
        ],
      ),
    ),
  ));
}

  // void screenShot() async {
  //   print("ScreenShot Button Clicked");
  //   RenderRepaintBoundary boundary = screen.currentContext.findRenderObject();
  //   var image = await boundary.toImage();
  //   ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  //   var filePath = await ImagePickerSaver.saveFile(
  //       fileData: byteData.buffer.asUint8List());
  //   print(filePath);
  // }

