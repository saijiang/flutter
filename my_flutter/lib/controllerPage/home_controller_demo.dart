import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_flutter/demo/custom_cell_demo.dart';
import 'package:my_flutter/model/post.dart';

class CustomHisContrlloer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 作者建议在第一次 build 的时候就进行初始化，这样接下来就可以放心使用了。
      ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return Scaffold(
       appBar: AppBar(
         title: Text('首页'),

       ),
       body: CustomScrollView(
         shrinkWrap: true,
         //内容
         slivers: <Widget>[
           new SliverPadding(
             padding: EdgeInsets.all(20.0),
             sliver: SliverList(
               delegate: SliverChildListDelegate(
                         <Widget>[
                        Container(
                          width: ScreenUtil.screenWidth,
                          height: ScreenUtil.getInstance().setHeight(400),
                          color: Colors.white,
                          child: CustomScroll(),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        const Text('为您推荐',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                       CustomCellView(),
                        const Text('D'),
                   ],
               ),
             ),
           )
         ],
       ),
      //  body: Container(
      //        width: ScreenUtil.screenWidth,
      //        height: ScreenUtil.getInstance().setHeight(400),
      //        color: Colors.red,
      //        child: CustomScroll(),
      //      ),
       
    );
  }
}

//滚动广告
class CustomScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context,int index){
          return new Image.network(posts[index].imageUrl,fit: BoxFit.fill,);////fit: BoxFit.fill,
        },
        itemCount: posts.length,
        // itemHeight: 200,//ScreenUtil.getInstance().setHeight(200),
        // itemWidth:  200,//ScreenUtil.getInstance().scaleWidth,
// viewportFraction: 0.8,
// scale: 0.9,
        // layout: SwiperLayout.DEFAULT,
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
    );
  }
}