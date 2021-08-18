import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app0316/view/Image_page.dart';
import 'package:flutter_app0316/view/grid_page.dart';
import 'package:flutter_app0316/view/textfiled_page.dart';
import 'package:flutter_app0316/view/user/login_page.dart';

import 'layout_page.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  var list = ["GridView", "Textfiled", "ImagePage", "LayoutPage"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("FastMoney")),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return getItem(context, index);
          },
        ),
      ),
    );
  }

  Widget getItem(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              onClickItem(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(list[index]),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("ccccccc_$index");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_forward_rounded),
            ),
          )
        ],
      ),
    );
  }

  void onClickItem(int position) {
    print("onClick i");
    switch (position) {
      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
          return GridPage();
        }));
        break;
      case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
          return TextFiledPage();
        }));
        break;
      case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
          return ImagePage();
        }));
        break;
      case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
          return LoginPage();
        }));
        break;
    }
  }
}
