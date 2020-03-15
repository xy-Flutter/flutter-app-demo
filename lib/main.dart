import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyAlignApp3());

//相对容器中心偏移
class MyAlignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Aligin相对原点定位")),
      body: Container(
//        width: 120,显示指定container的高度宽度
//        height: 120,
        //使用
        color: Colors.greenAccent,
        child: Align(
          widthFactor: 2.0, //由align组件宽度高度，子size确定container宽度高度
          heightFactor: 2.0,
          alignment: Alignment(0.0, -1.0),//相对容器container原点
          child: FlutterLogo(
            size: 60,
            colors: Colors.red,
          ),
        ),
      ),
    ));
  }
}
//相对容器左上角偏移
class MyAlignApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Aligin相对原点定位")),
      body: Container(
//        width: 120,显示指定container的高度宽度
//        height: 120,
        //使用
        color: Colors.greenAccent,
        child: Align(
          widthFactor: 2.0, //由align组件宽度高度，子size确定container宽度高度
          heightFactor: 2.0,
          alignment: FractionalOffset(0.2,0.6),//相对容器container原点
          child: FlutterLogo(
            size: 60,
            colors: Colors.red,
          ),
        ),
      ),
    ));
  }
}

///偏移常量
class MyAlignApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Aligin相对原点定位")),
      body: Container(
//        width: 120,显示指定container的高度宽度
//        height: 120,
        //使用
        color: Colors.greenAccent,
        child: Align(
          widthFactor: 2.0, //由align组件宽度高度，子size确定container宽度高度
          heightFactor: 2.0,
          alignment: Alignment.topRight,//相对容器container原点
          child: FlutterLogo(
            size: 60,
            colors: Colors.red,
          ),
        ),
      ),
    ));
  }
}
