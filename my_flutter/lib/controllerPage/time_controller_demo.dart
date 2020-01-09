import 'package:flutter/material.dart';
import '../demo/contnerController/button_demo.dart';
import '../demo/contnerController/text_demo.dart';
import '../demo/contnerController/image_Icon_demo.dart';
import '../demo/contnerController/switch_demo.dart';
import '../demo/contnerController/textFiled_demo.dart';
import '../demo/contnerController/progress_demo.dart';
class CustomTimeContrlloer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
           RaisedButton(
             child: Text('按钮button'),
             onPressed: (){
               //导航到新的路由页面
               Navigator.push(context, 
                MaterialPageRoute(builder: (context){

                  return MyButtonApp();
                })

               );
             },
           ),
           RaisedButton(
             child: Text('文本及样式'),
             onPressed: (){
               Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return MyTextApp();
                  })
                );
             },
           ),
          RaisedButton(
            child: Text('图片及Icon'),
            color: Colors.red,
            textColor: Colors.white,

            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return ImageIconApp();
              })
              );
            },
          ),
          RaisedButton(
            child: Text('单选开关和复选框'),
            color: Colors.blue,
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return SwitchAndCheckBoxTestRoute();
              })
              );
            },
          ),
          RaisedButton(
            child: Text('文本输入框'),
            color: Colors.green,
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return TextFiledDemo();
              })
              );
            },
          ),
           RaisedButton(
            child: Text('进度指示器'),
            color: Colors.yellow,
            onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context){
                return ProgressApp();
              })
              );
            },
          ),

          ],
        ),
      ),
    );
  }
}