
import 'dart:io';

import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingStage();
  }
}

class SettingStage extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("my pag11e"),
        ),
        body: getContainer(context));
  }

  Widget getContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text(
            "dddddddd123123132dddd123123dddddddd----dddddddddddddddddddd",
            style: TextStyle(
                color: Colors.red, backgroundColor: Colors.amberAccent),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
          ),
          MaterialButton(
              child: Text("后退"), onPressed: () => {Navigator.pop(context)}),
          Image.file(
            File('1.png'),
            width: 300,
            height: 160,
          ),
          Align(
            alignment: Alignment.center,
            child: MaterialButton(
                color: Colors.grey,
                child: Text("打开照相机"),
                onPressed: () =>
                {
                }),
          )
        ],
      ),
    );
  }
}
