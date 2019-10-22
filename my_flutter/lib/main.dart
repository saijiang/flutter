import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: App(),
      ),
    );
  }
}

///自定义部件
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
          child: new Text(
            'fultter的哈是吉安书法家和东方季道爱神的箭书法家的说法加速度后福建省的航管局啊所发生的富家大室福建省的胳膊上的办公室的那个啊就是富家大室动画仿京东书法家',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.yellow[30]
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            textDirection: TextDirection.ltr,
            ),
        );
  }
}
