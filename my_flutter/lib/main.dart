import 'package:flutter/material.dart';
import 'demo/listView_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,//去掉右上角的debug标签
      home: DefaultTabController(
          length: 3,
           child: Scaffold(
          
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
          elevation: 5,//设置阴影
          leading: IconButton(
            icon: Icon(Icons.memory),
            tooltip: "Navigation",
            onPressed: () => debugPrint('点击了导航栏上的按钮'),
          ),
          bottom: TabBar(
           tabs: <Widget>[
             Tab(icon: Icon(Icons.local_activity),),
             Tab(icon: Icon(Icons.local_airport),),
             Tab(icon: Icon(Icons.local_atm),),
           ], 
          ),
          actions: <Widget>[
            IconButton(
                 icon: Icon(Icons.search),
                 tooltip: 'search',
                 onPressed: () => debugPrint('点击搜索'),
            ),
          ],
        ),
        // body: HomeListView(),
        body: CustomTabBarView(),
     
           ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class CustomTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
       Icon(Icons.local_activity,size: 120,color: Colors.black12,),

       Icon(Icons.local_airport,size: 120,color: Colors.blueGrey,),
       Icon(Icons.local_bar,size: 120,color: Colors.blue,),
      ],
    );
  }
}