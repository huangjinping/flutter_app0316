import 'package:flutter/material.dart';
import 'package:flutter_app0316/components/SSL.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  List item = [
    {"title": "User Info"},
    {"title": "Bank Card"},
    {"title": "Information"},
    {"title": "Setting"},
    {"title": "About Us"},
    {"title": "Version(1.0)"},
  ];

  Widget getItem(int index) {
    print(item.elementAt(index)["title"]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network("https://upload.jianshu.io/users/upload_avatars/19136802/403bfdbf-f29c-4465-aad0-5377227046d1?imageMogr2/auto-orient/strip|imageView2/1/w/80/h/80",width: 30,height: 30,fit: BoxFit.contain,),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(item.elementAt(index)["title"]),
        )
      ],
    );
  }


  void  test(){
        // for(int i=0;i<item.length;i++){
        //   print("ddd____${item.elementAt(i)}");
        // }

    print(item.getRange(1, 2));
    // item.forEach((element) {
    //     print("ddd____${element}");
    // });
  }

  @override
  Widget build(BuildContext context) {

    test();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Mine")),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
                child: Image(
                    width: 90,
                    height: 90,
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/user/ic_logo.png"))),
            Stack(
              children: [
                Align(
                  child: Text("Roloasd"),
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Align(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Text("Verified")),
                    alignment: Alignment.topRight,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.phone_android), Text("1581****281")],
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: item.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (ctx, index) {
                    return getItem(index);
                  }),
            ),
            SSL()

          ],
        ),
      ),
    );
  }
}
