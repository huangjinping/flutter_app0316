import 'package:flutter/material.dart';
import 'package:flutter_app0316/view/welcome_page.dart';

class LauncherPager extends StatefulWidget {
  @override
  _LauncherPagerState createState() => _LauncherPagerState();
}

class _LauncherPagerState extends State<LauncherPager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:WelComePage(),
    );
  }
}


/// 将第一个例子中的Scaffold包裹在AppPage里面
class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SearchPage();
              }));
            },
          )
      ),
    );
  }
}

/// 搜索页
class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索"),
      ),
      body: Text("搜索页"),
    );
  }
}
