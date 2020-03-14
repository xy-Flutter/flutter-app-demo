import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyWrapApp());

///TODO  待研究，流式布局wrap问题：三个，右边有间隙
class MyWrapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wrap布局导航标题"),
          backgroundColor: Colors.black,//导航栏的背景
        ),
        body: Container(
          padding: EdgeInsets.all(2.0),
//          margin: EdgeInsets.all(0.0),
          color: Colors.lightGreenAccent,
          child: Wrap(
            spacing: 5.0, //水平方向组件之间的间距
            runSpacing: 5.0, //子组件垂直方向间距
            alignment: WrapAlignment.center, //右边
            children: <Widget>[
              Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("A"),
                  ),
                  label: Text("第1个子部件")),
              Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("B"),
                  ),
                  label: Text("第2个子部件")),
              Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("C"),
                  ),
                  label: Text("第3个子部件")),
              Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("D"),
                  ),
                  label: Text("第4个子部件"))
            ],
          ),
        ),
      ),
    );
  }
}
