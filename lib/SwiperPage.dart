import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwiperState();
  }
}

class _SwiperState extends State<SwiperPage> {
  List<Image> imgs = [
    //建立了一个图片数组
    Image.asset(
      'lib/images/swiper1.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'lib/images/swiper2.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'lib/images/swiper3.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'lib/images/swiper4.jpg',
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片轮播"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text("样式1:"),
            Container(
              height: 175,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  //条目构建函数传入了index,根据index索引到特定图片
                  return imgs[index];
                },
                itemCount: imgs.length,
                autoplay: true,//
                pagination: new SwiperPagination(), //页码，通俗讲就是下边的圆点  这些都是控件默认写好的,直接用
                control: new SwiperControl(),//控制器，通俗讲就是两边的箭头
              ),
            ),
            Text("样式2:"),
            Container(
              height: 175,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return imgs[index];
                },
                itemCount: imgs.length,
                autoplay: true,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                viewportFraction: 0.8,
                scale: 0.9,
              ),
            ),
            Text("样式3:"),
            Container(
              height: 175,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return imgs[index];
                },
                itemCount: imgs.length,
                autoplay: true,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                itemWidth: 300.0,
                layout: SwiperLayout.STACK,
              ),
            ),
            Text("样式4:"),
            Container(
              height: 175,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return imgs[index];
                },
                itemCount: imgs.length,
                autoplay: true,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                itemWidth: 300.0,
                itemHeight: 400.0,
                layout: SwiperLayout.TINDER,
              ),
            ),
            Text("样式5:"),
            Container(
              height: 175,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return imgs[index];
                },
                itemCount: imgs.length,
                autoplay: true,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                layout: SwiperLayout.CUSTOM,
                customLayoutOption: new CustomLayoutOption(
                    startIndex: -1, stateCount: 3)
                    .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                  new Offset(-370.0, -40.0),
                  new Offset(0.0, 0.0),
                  new Offset(370.0, -40.0)
                ]),
                itemWidth: 300.0,
                itemHeight: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
