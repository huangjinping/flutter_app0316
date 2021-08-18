import 'package:flutter/material.dart';

class TextFiledPage extends StatefulWidget {
  @override
  _TextFiledPageState createState() => _TextFiledPageState();
}

class _TextFiledPageState extends State<TextFiledPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "输入",
            style: TextStyle(),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("文本测试页面", style: TextStyle(fontSize: 10)),
            Text("中间", style: TextStyle(fontSize: 10)),
            Text("下边的", style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
