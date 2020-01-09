import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  _SwitchAndCheckBoxTestRouteState createState() => _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState extends State<SwitchAndCheckBoxTestRoute> {
 
 bool _switchSelect = true;//维护单选开关状态
 bool _checkboxSelect = true;//维护复选框状态
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单选开关和复选框'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            //单选框
            Switch(
              value: _switchSelect,
              onChanged: (value){
               //重新构建页面
                setState(() {
                  _switchSelect = value;
                });
              },
            ),
            //复选框
            Checkbox(
              value:  _checkboxSelect,
              activeColor: Colors.red,//选择颜色
              onChanged: (value){
                //重新构建页面
                setState(() {
                  _checkboxSelect = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}