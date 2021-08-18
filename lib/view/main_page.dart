import 'package:flutter/material.dart';
import 'package:flutter_app0316/view/loan_page.dart';
import 'package:flutter_app0316/view/my_page.dart';
import 'package:flutter_app0316/view/user/mine_page.dart';
import 'package:oktoast/oktoast.dart';

import 'list_page.dart';
import 'main/home_page.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> with TickerProviderStateMixin {
  var _pageCtr;
  int _tabIndex = 0;

  @override
  void initState() {
    _pageCtr = PageController(initialPage: 0, keepPage: true);
  }

  @override
  void dispose() {
    _pageCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        home: Scaffold(
          body: PageView(
            controller: _pageCtr,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[HomePage(), MinePage()],
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _tabIndex,
              type: BottomNavigationBarType.fixed,
              fixedColor: Colors.blue,
              onTap: (index) => _tap(index),
              items: [
                BottomNavigationBarItem(label: "Loan", icon: Icon(Icons.home)),
                BottomNavigationBarItem(label: "My", icon: Icon(Icons.map)),
              ]),
        ),
      ),
    );
  }

  _tap(int index) {
    setState(() {
      _tabIndex = index;
      _pageCtr.jumpToPage(index);
    });
  }
}
