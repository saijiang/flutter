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
       backgroundColor: Color(0xffEDEFF4),
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
                        SizedBox(
                          height: 15,
                        ),
                       CustomCellView(),
                       Container(
                        //  height: 480,
                         child: ListView.builder(
                           physics: NeverScrollableScrollPhysics(),//列表禁止滚动
                           itemCount: 3,
                           shrinkWrap: true,//解决无限高的问题
                           itemBuilder: (context , index){
                             return  CustomCellView();
                           },
                         ),
                       ),

                        // const Text('D'),
                   ],
               ),
             ),
           )
         ],
       ),       
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
        autoplay: true,
        outer: true,
        duration: 200,//持续时间 单位毫秒
        pagination: SwiperPagination(
          ///显示默认分页指示器
          alignment: Alignment.bottomCenter,
          builder: SwiperPagination.dots
        ),//展示默认分页指示器
      
        onTap: (int index){
          print('#index');
        },

    );
  }
}