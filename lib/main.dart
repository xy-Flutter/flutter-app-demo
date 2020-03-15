import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyStackPositionedApp());
}

///层叠布局 ：使用stack positioned实现绝对定位
///stack：允许叠加
///positioned：子部件相对stack四个角的实现定位
class MyStackPositionedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter绝对定位"),
        ),
        body: ConstrainedBox(
          //确保stack占满全屏
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center, //布局内未指定的组件默认居中
//            textDirection: TextDirection.rtl,
            fit: StackFit.expand, //没有指定位置的就占满stack全部
            children: <Widget>[
              Container(
                color: Colors.greenAccent,
                child: Text("container，没有指定位置，水平垂直居中对齐，stack内的元素都可以被后面的覆盖叠加",
                    style: TextStyle(backgroundColor: Colors.white30)),
              ),
              Positioned(
                left: 18.0, //水平不居中，垂直居中
                child: Text(
                  "left，距离stack左边18.0",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.red,
                      color: Colors.blue),
                ),
              ),
              Positioned(
                top: 200, //水平居中，垂直不居中
                child: Text(
                  "top，距离stack顶部200",
                ),
              )
              ,Positioned(
                left: 18.0,
                child: Text("我会叠加",style: TextStyle(
                  backgroundColor: Colors.deepPurpleAccent
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
