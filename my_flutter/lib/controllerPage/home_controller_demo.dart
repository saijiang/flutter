import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class CustomHisContrlloer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('首页'),

       ),
       body: Text('君不见，黄河之水天上来，奔流到海不复回。\n君不见，高堂明镜悲白发，朝如青丝暮成雪。\n人生得意须尽欢，莫使金樽空对月。\n',
                   style: TextStyle(
                     color: Colors.red,
                     fontSize: 20,
                     letterSpacing: 1,//设置字与字之间的间距
                    //  wordSpacing: 30,
                   ),
       ),
       
    );
  }
}