import 'package:flutter/material.dart';

class RowCloumDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RowCloumDemo'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Hello World'),
                Text('I am Jack')
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Hello World'),
                Text('I am Jack')
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Hello World'),
                Text('I am Jack')
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text('Hello World'),
                Text('I am Jack')
              ],
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.red,
              ),
            ),
//colum排序方法
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Hi'),
                Text('world')
              ],
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text('Hello World'),
                          Text('I am Jack')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}