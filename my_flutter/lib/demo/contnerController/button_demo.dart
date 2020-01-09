import 'package:flutter/material.dart';

class MyButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '按钮'
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('RaisedButton'),
              onPressed: (){},
            ),
            FlatButton(
              child: Text('FlatButton'),
              textColor: Colors.red,
              color: Colors.blue,
              onPressed: (){},
            ),
       OutlineButton(
        child: Text('OutlineButton'),
        onPressed: (){},
       ),
      IconButton(
        icon: Icon(Icons.thumb_down),
        onPressed: (){},
      ),
      //带图表的按钮
      RaisedButton.icon(
        icon: Icon(Icons.search),
        label: Text('搜索'),
        onPressed: (){},
      ),
      OutlineButton.icon(
        icon: Icon(Icons.send),
        label: Text('发送'),
        onPressed: (){},
      ),
      FlatButton.icon(
        icon: Icon(Icons.add),
        label: Text('添加'),
        onPressed: (){},
      ),
      //自定义按钮
      FlatButton(
        color: Colors.blue,
        highlightColor: Colors.green,
        colorBrightness: Brightness.dark,
        splashColor: Colors.red,
        child: Text('自定义按钮样式'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: (){},
      )

          ],
        ),
      ),
    );
  }
}