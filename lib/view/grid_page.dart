import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridPage extends StatefulWidget {
  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid"),
      ),
      body: Container(
        color: Colors.white70,
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:4,
            childAspectRatio:1,
            crossAxisSpacing:10,
            mainAxisSpacing:10
        ), itemBuilder: (ctx,index){
          return getItem(index);
        }),
      ),
    );
  }

  Widget  getItem(int index){
    return  Container(color: Colors.white70,alignment:Alignment.center , child: Text("dat1a_$index"));
  }

}
