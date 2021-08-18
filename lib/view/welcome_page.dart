import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app0316/view/main_page.dart';

class WelComePage extends StatefulWidget {
  @override
  _WelComePageState createState() => _WelComePageState();
}

class _WelComePageState extends State<WelComePage> {
  final String launchImage =
      "";
  int _countdown = 5;
  Timer _countdownTimer;

  @override
  void initState() {
    super.initState();
    _startRecordTime();
    print('初始化启动页面');
  }

  void _startRecordTime() {
    _countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown <= 1) {
//          Navigator.of(context).pushNamed("/demo1");
          Navigator.of(context).pop();

          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return App();
          }));
          _countdownTimer.cancel();
          _countdownTimer = null;
        } else {
          _countdown -= 1;
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    print('启动页面结束');
    if (_countdownTimer != null && _countdownTimer.isActive) {
      _countdownTimer.cancel();
      _countdownTimer = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.network(launchImage, fit: BoxFit.fill),
            Positioned(
              top: 30,
              right: 30,
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12,
                ),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: '$_countdown',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        )),
                    TextSpan(
                        text: '跳过',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                        )),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("首页"),
  //     ),
  //     body: Container(
  //       color: Colors.white,
  //       child: Column(
  //         children: [
  //           MaterialButton(
  //               child: Text("提交"),
  //               onPressed: () {
  //                 print("children-1-");
  //                 print("children-2-");
  //                 onNext(context);
  //               })
  //         ],
  //       ),
  //     ),
  //   );
  // }

  void onNext(BuildContext context) {
    Navigator.push(context, new MaterialPageRoute(builder: (ctx) {
      return App();
    }));
  }
}
