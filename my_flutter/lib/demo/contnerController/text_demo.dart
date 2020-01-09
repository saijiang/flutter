import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '文本及样式'
        ),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Hello world',
            textAlign: TextAlign.left,
            
            ),
            Text(
              '文本重复4次的写法 * 4' * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,//overflow来指定截断方式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20

              ),
            ),
         Text(
           'Hello World',
           style: TextStyle(
             color: Colors.blue,
             decoration: TextDecoration.underline,
             decorationStyle: TextDecorationStyle.dashed,
             fontSize: 20,
             backgroundColor: Colors.yellow
           ),
         ),
        
        Text.rich(
         TextSpan(
           children: [
             TextSpan(
               text: "TextSpan: "
             ),
             TextSpan(
               text: '一个Text内容的不同部分按照不同的样式显示，这时就可以使用TextSpan',
               style: TextStyle(
                 color: Colors.red,
                 fontSize: 15
               ),
             ),
           ]
         )
        ),
        DefaultTextStyle(
          style: TextStyle(
            color: Colors.red,
            fontSize: 20
          ),
          textAlign: TextAlign.start,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Hello World'),
              Text('I am Jack'),
              Text(
                'I am Tom',
                style: TextStyle(
                  inherit: false,
                  color: Colors.green
                )
              )
            ],
          )
        )





        ],
      ),
    );
  }
}