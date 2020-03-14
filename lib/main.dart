import 'package:flutter/material.dart';

void main() => runApp(MyFlexApp());

///弹性布局，很简单flex结合expanded
class MyFlexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flex布局"),
        ),
        body: Container(
          color: Colors.indigo,
          child: Column(
            children: <Widget>[
              Flex(
                //水平方向的弹性布局
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Container(
                        height: 30,
                        color: Colors.yellow,
                        child: Text("水平左边"),
                      )),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 30,
                      color: Colors.cyanAccent,
                      child: Text("水平右边"),
                    ),
                  )
                ],
              )
              //分隔符，试试垂直方向的弹性布局
              ,
              Container(
                //分隔符
                padding: EdgeInsets.only(top: 10.0),
                color: Colors.red,
                height: 100, //3个分
                //垂直三个方向
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.cyanAccent,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.cyan,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
