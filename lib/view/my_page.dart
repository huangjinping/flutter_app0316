import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app0316/view/setting_page.dart';
import 'package:flutter_app0316/view/textfiled_page.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPageState();
  }
}

class MyPageState extends State<MyPage> {
  String iconUrl =
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F10888948063%2F1000.jpg&refer=http%3A%2F%2Finews.gtimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618804052&t=45de93e113894fe2725412468ace60fb";

  BuildContext mcontext;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mcontext = context;

    return Scaffold(
        appBar: AppBar(
          // 显示在界面顶部的AppBar
          title: Text("my page"),
        ),
        body: createView1());
  }

  void getIndex() async {
    BaseOptions options = BaseOptions(
        method: "get",
        baseUrl: "https://www.baidu.com",
        queryParameters: {
          "areaCode": "",
          "cateId": "1e4bbe70-82d9-48a4-b01c-c61cb6d9096c",
          "wd": "帅气的阿斌"
        },
        headers: {
          "": ""
        });
    Dio netRequest = Dio(options);
    final response = await netRequest.get('/s');
    print(response);
  }

  void onPressed() {
    Navigator.push(
        mcontext, new MaterialPageRoute(builder: (ctx) => SettingPage()));

    setState(() {
      iconUrl =
          "https://flutterchina.club/images/homepage/header-illustration.png";
    });
  }

  Widget createView1() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: [
          Image.network(iconUrl, width: 100),
          MaterialButton(
              onPressed: onPressed,
              child: new Text('Hello'),
              padding: new EdgeInsets.only(left: 10.0, right: 10.0)),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text("1e4bbe70-82-481212a",
                  maxLines: 102,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 12,
                      backgroundColor: Colors.red,
                      color: Colors.white)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text("asdasdas1dasd"),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.access_time,
                color: Colors.grey,
                size: 15,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.only(left: 1, top: 50),
                    child: Text(
                      "widgwidgetwidgetwidg-----",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    )),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Text(
                      "widgewidgetwidwidg",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    )),
              ),
            ],
          ),
          Row(
            children: [
              MaterialButton(child: Text("ImagePage"), onPressed: ()=> {Navigator.push(context, new MaterialPageRoute(builder: (ctx)=>TextFiledPage()))})
            ],
          )
        ],
      ),
    );
  }
}
