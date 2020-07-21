import 'package:flutter/material.dart';

class TextPickerScreen extends StatefulWidget {
  @override
  _TextPickerScreen createState() => _TextPickerScreen();
}

class _TextPickerScreen extends State<TextPickerScreen> {
  double _value = 20;
  void _setvalue(double value) => setState(() => _value = value);
  String txt = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("customize A TExt"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.blue,
              Colors.purpleAccent,
            ])),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Text here....",
                    ),
                    onChanged: (String str) {
                      setState(() {
                        str = txt;
                      });
                      print(str);
                    },
                  ),
                ),
                new Slider(
                    activeColor: Colors.purple,
                    min: 10,
                    max: 40,
                    value: _value,
                    onChanged: _setvalue),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Adjust Font Size",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      _value.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                PopupMenuButton(
                  child: RaisedButton(
                    child: Text(
                      "change font size",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "English",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w700),
                      ),
                    ),
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "Latin",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w700),
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                        "Chinese",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 170),
                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: RaisedButton(
                    color: Colors.black12,
                    onPressed: () {
                      Navigator.pop(context, txt);
                    },
                    child: Text("UPDATE",
                        style:
                            TextStyle(color: Colors.white, letterSpacing: 5)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
