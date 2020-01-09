import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new MyHomePage(),//MyHomePage(title: 'Flutter Demo Home Page'),传参
      
    );
  }
}

class MyHomePage extends StatefulWidget {
/*
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
*/
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 可变函数 计数器
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
     if(_counter > 10){
       _counter = 0;
     }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
