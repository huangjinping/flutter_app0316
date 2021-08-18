import 'dart:ui';

import 'package:flutter/material.dart';

class InputCode extends StatefulWidget {
  @override
  _InputCodeState createState() => _InputCodeState();
}

class _InputCodeState extends State<InputCode> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
              child: TextField(
                style: TextStyle(fontSize: 30),
                maxLength: 1,
                decoration:
                    InputDecoration(
                        hintText: "*",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        )),
              ),
              width: 50,
              height: 50),
        ],
      ),
    );
  }
}
