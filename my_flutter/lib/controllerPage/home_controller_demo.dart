import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomHisContrlloer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('首页'),

       ),
       body: CustomScroll()
       
    );
  }
}

//滚动广告
class CustomScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context,int index){
          return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);////fit: BoxFit.fill,
        },
        itemCount: 3,
        itemHeight: 200,//ScreenUtil.getInstance().setHeight(200),
        itemWidth:  200,//ScreenUtil.getInstance().scaleWidth,
        // layout: SwiperLayout.STACK,
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
    );
  }
}