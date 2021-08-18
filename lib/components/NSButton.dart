import 'package:flutter/material.dart';

class NSButton extends StatefulWidget {

  String title;
  VoidCallback onPressed;



  NSButton({this.title,  this.onPressed});

  @override
  _NSButtonState createState() => _NSButtonState();
}

class _NSButtonState extends State<NSButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onPressed();
      },
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Colors.blue),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Center(child: Text(widget.title ,style: TextStyle(
              color: Colors.white
            ),)),
            Align(
              child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
              alignment: Alignment.topRight,
            )
          ],
        ),
      ),
    );
  }
}
