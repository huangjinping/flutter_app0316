
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Future<void> openCamera  () async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
    }

// You can can also directly ask the permission about its status.
    if (await Permission.location.isRestricted) {
      // The OS restricts access, for example because of parental controls.
    }
  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
                "Loan Amuount",
              )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 30),
            decoration:BoxDecoration(
              color:Colors.cyanAccent ,
              borderRadius: BorderRadius.circular(30) ,
              border: Border.all(color: Colors.cyanAccent)
            ) ,
            child: Text("s3.0000",style: TextStyle(
              color: Colors.grey
            ),),
          ),
          Center(child: TextButton(onPressed:(){
            openCamera();

          }, child: Text("打开照相机")))
        ],
      ),
    );
  }
}
