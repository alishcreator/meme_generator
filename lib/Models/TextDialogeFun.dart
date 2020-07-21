import 'package:flutter/material.dart';

import 'TextModel.dart';

Future<String> ShowTextPickerDialoge(BuildContext context, Function fn) async {
  TextModel textModel =
      new TextModel("This is a sample text", "impact", Colors.white);

  String txt;

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
                      "Text Properties",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Text here.......',
                              ),
                              onChanged: (String str) {
                                txt = str;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                        onPressed: () {
                          print("tis is a text updated buton clicked");
                          // textModel.text = txt;
                          // textModel.color = pickerColor;
                          // textModel.textFont = selectedFont;
                          print(txt);
                          textModel.text = txt.toString();
                          print(textModel.color);
                          fn(textModel);
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        child: Text(
                          "update",
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
