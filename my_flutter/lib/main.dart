import 'package:flutter/material.dart';
import 'package:my_flutter/demo/listView_demo.dart';
import 'demo/drawer_light_demo.dart';
import 'demo/navigation_bottom_demo.dart';
// void main() => runApp(MyApp());

void main() => runApp(FlutterApp());



class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomBottomNavigationBar(),
    );
  }
}



class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,//去掉右上角的debug标签
      home: DefaultTabController(
           length: 3,
           child: Scaffold(
          
        appBar: AppBar(
          title: new Text('Welcome to Flutter'),
          elevation: 5,//设置阴影
          // leading: IconButton(
          //   icon: Icon(Icons.memory),
          //   tooltip: "Navigation",
          //   onPressed: () => debugPrint('点击了导航栏上的按钮'),
          // ),
          bottom: TabBar(
            unselectedLabelColor: Colors.red,//设置未选中的颜色
            indicatorColor: Colors.blue,//设置滚动线条的颜色
            // indicatorSize: TabBarIndicatorSize.label,//设置滚动线条的大小
            indicatorWeight: 1.0,//设置高度
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
        
        body: CustomTabBarView(),
        drawer: DrawerLigtt(),//Text('左抽屉'),//抽屉效果 - 左抽屉
        endDrawer: DrawerRight(),//抽屉效果 - 右抽屉
        bottomNavigationBar: CustomBottomNavigationBar(),
           ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.blue
      ),
    );
  }
}

