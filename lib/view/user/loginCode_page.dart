import 'package:flutter/material.dart';
import 'package:flutter_app0316/components/NSButton.dart';
import 'package:flutter_app0316/components/Toast.dart';
import 'package:flutter_verification_box/verification_box.dart';

import '../main_page.dart';

class LoginCodePage extends StatefulWidget {
  String phone;
  String desc =
      "";

  LoginCodePage(String phone) {
    this.phone = phone;
    desc="Verify your account by entering the 4 digits code we sent to: +52 ${phone}";
  }


  @override
  _LoginCodePageState createState() => _LoginCodePageState();
}

class _LoginCodePageState extends State<LoginCodePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Code")),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
              child: Image(
                  width: 90,
                  height: 90,
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/user/ic_logo.png"))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(widget.desc),
          ),
          Container(
            height: 45,
            margin: EdgeInsets.only(top: 10),
            child: SizedBox(
              width: 300,
              child: VerificationBox(
                onSubmitted: (value){
                  print('$value');
                },
                count: 4,
                showCursor: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: NSButton(
              title: "Submit",
              onPressed: () {
                onLogin();
              },
            ),
          )
        ],
      ),
    );
  }


  void  getCode(){
      Toast.show(widget.phone);
  }

  void onLogin(){
    // Navigator.pushNamedAndRemoveUntil(context, newRouteName, (route) => false)
    // Navigator.popAndPushNamed(context, );
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => App(),), (route) => route == null);
  }
}
