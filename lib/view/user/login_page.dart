import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app0316/components/NSButton.dart';
import 'package:flutter_app0316/components/SSL.dart';

import 'loginCode_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController;



  void _onTextChange(text) {

    print("");

  }

  void onNext(BuildContext context) {
   String phone= phoneController.text;
    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
      return LoginCodePage(phone);
    }));
  }

  @override
  Widget build(BuildContext context) {
    phoneController=TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
          child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
              child: Image(
                  width: 90,
                  height: 90,
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/user/ic_logo.png"))),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Row(
              children: [
                Icon(Icons.contact_phone),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "+52",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                          hintText: "161231", border: InputBorder.none)),
                )
              ],
            ),
          ),
          TextButton(
              onPressed: () {
                print("ddd11");
              },
              child: Text("da11a")),
          NSButton(
            title: "Submit",
            onPressed: () {
              onNext(context);
            },
          ),
          Expanded(
            child: Text(""),
          ),
          SSL(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              text: TextSpan(
                  text: "Bycontinuing,you agree to P C Financial CashBean’s",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                  children: [
                    TextSpan(
                        text: " Terms&Conditions ",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print(" Terms&Conditions ");
                          }),
                    TextSpan(
                      text: " and ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                        text: " Pricacy Policy ",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {

                          }),
                  ]),
            ),
          ),
        ],
      )),
    );
  }


}
