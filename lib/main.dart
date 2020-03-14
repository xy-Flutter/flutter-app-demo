

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
//  runApp(MyApp2());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp标题",
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("脚手架标题"),
        ),
        body: Center(
          child: Text("hell wolrd"),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "material app titile",
      theme: ThemeData.dark(),
      home: Center(
        child: Text("hellworld"),
      ),
    );
  }
}
