import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Container(
        color: Colors.grey,
        alignment: Alignment.topRight,
        child: Column(
          children: [
            Image.network(
              "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3494235028,4026816048&fm=26&gp=0.jpg",
              fit: BoxFit.contain,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
