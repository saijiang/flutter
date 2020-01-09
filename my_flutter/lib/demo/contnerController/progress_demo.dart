import 'package:flutter/material.dart';

class ProgressApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('进度指示器'),
      ),
      body: Container(
       child: Column(
         children: <Widget>[
           SizedBox(
             height: 10,
           ),
           //动画效果进度条
           LinearProgressIndicator(
             backgroundColor: Colors.red,
             valueColor: AlwaysStoppedAnimation(Colors.blue),
           ),
           SizedBox(
             height: 10,
           ),
             LinearProgressIndicator(
             backgroundColor: Colors.red[100],
             valueColor: AlwaysStoppedAnimation(Colors.blue),
             value: 0.5,
           ),
           SizedBox(
              height: 10,
               ),
          CircularProgressIndicator(
            // value: 0.3,// 不加值的话,显示的是动画效果 其大小是根据容器的大小固定的
            backgroundColor: Colors.red,
            valueColor: AlwaysStoppedAnimation(Colors.grey),

          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
             valueColor: AlwaysStoppedAnimation(Colors.red),
             value: 0.8,
            ),
          )
         ],
       ),
      ),
    );
  }
}