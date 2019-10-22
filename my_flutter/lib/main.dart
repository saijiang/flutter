import 'package:flutter/material.dart';
import 'demo/listView_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,//去掉右上角的debug标签
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
          elevation: 5,//设置阴影
          leading: IconButton(
            icon: Icon(Icons.memory),
            tooltip: "Navigation",
            onPressed: () => debugPrint('点击了导航栏上的按钮'),
          ),
          actions: <Widget>[
            IconButton(
                 icon: Icon(Icons.search),
                 tooltip: 'search',
                 onPressed: () => debugPrint('点击搜索'),
            ),
          ],
        ),
        body: HomeListView(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}