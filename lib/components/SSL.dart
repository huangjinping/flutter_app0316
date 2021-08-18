import 'package:flutter/material.dart';

class SSL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.admin_panel_settings_sharp),
            Text("256 bit SSL protection secure",style: TextStyle(fontSize: 10),)
          ],
        ),
      ),
    );
  }
}
