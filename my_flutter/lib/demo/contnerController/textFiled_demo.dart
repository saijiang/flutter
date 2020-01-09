import 'package:flutter/material.dart';

class TextFiledDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本输入框'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              autocorrect: true,
              // maxLines: null,//不限行数
              
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: '用户名或邮箱',
                prefixIcon: Icon(Icons.person),
                //未获取焦点下划线设置为红色
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)
                ),
                //获取焦点下划线设置为黄色
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow)
                )
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '您的登录密码',
                prefixIcon: Icon(Icons.lock)
              ),
            )
          ],
        ),
      ),
    );
  }
}