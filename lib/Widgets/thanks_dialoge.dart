import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:ved_meme/Models/TextModel.dart';

Future<String> ThankYouDialoge(BuildContext context) async {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: SingleChildScrollView(
            child: Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)), //this right here
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      "THANK YOU!",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            child: Text("This meme has been saved in \"Pictures\'s\" Folder.\Check your Gallery!", ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    RaisedButton(
                        onPressed: () {
                          print("tis is a text updated buton clicked");
                          // textModel.text = txt;
                          // textModel.color = pickerColor;
                          // textModel.textFont = selectedFont;

                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        child: Text(
                          "Got it!",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
