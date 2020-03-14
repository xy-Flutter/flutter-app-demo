///
import 'package:flutter/material.dart';

void main(List<String> args) {
//  runApp(MyRowApp());
  runApp(MyColumnApp());
}

///row(
///children[Widget]: 布局内包含的组件
///textDirection: children内组件摆放的顺序
///mainAxisSize: 此row占水平方向大小空间,max:表示占满水平方向，min:表示水平宽度等于子组件总宽度
///mainAxisAlignment: 如果mainAxisSize=min，没有意义，=max才有意义，此时，要参考textDirection初始方向，以textDirection为参考系
///verticalDirection: 表示总抽的对齐方式，不是子组件在纵轴方向
///crossAxisAlignment: 表示子组件在纵轴对齐方式，相对行底部
///)
class MyRowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp标题",
      theme: ThemeData.light(),
      home: Scaffold(
          appBar: AppBar(
            title: Text("脚手架标题"),
            centerTitle: false, //标题是否居中，默认false
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text(" hello world"), Text(" I am ok")],
              ),
              Row(
                children: <Widget>[Text(" hello world "), Text(" I am ok")],
              ),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                //TODO 此时应该是自下而上,为何不是在底部，配合crossAxisAlignment还不行？---想错了，这行无法跳到底部，而是指组件相对于行底部对齐
                verticalDirection: VerticalDirection.up,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    " hello world ",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(" I am ok")
                ],
              ),
            ],
          )),
    );
  }
}

class MyColumnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("列布局标题"),
        ),
        body: Container(
          color: Colors.blue,
          child: Column(
//          mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[Text("hi"), Text("hello"), Text(" world")],
          ),
        ),
      ),
    );
  }
}
