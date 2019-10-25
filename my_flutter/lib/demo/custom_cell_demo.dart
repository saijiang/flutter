import 'package:flutter/material.dart';
import '../detailsController/finaction_list_demo.dart';

class CustomCellView extends StatefulWidget {
  @override
  _CustomCellViewState createState() => _CustomCellViewState();
}

class _CustomCellViewState extends State<CustomCellView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        debugPrint('点击事件');
/////   路由页面跳转 
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => CustomFianactionList())
        );

      },
       child: Container(
      color: Color(0xffEDEFF4),
      height: 180,
      
      child: Column(
        children: <Widget>[
          Container(
           height: 170,
      // width: ScreenUtil.screenWidth - 40,
     decoration: new BoxDecoration(
       color: Colors.white,
      //  border: Border(
      //    top: BorderSide(
      //      color: Colors.indigoAccent[100],
      //      width: 3.0,
      //      style: BorderStyle.solid
      //    )
      //  ),
       borderRadius: BorderRadius.all(Radius.circular(10))
     ),

     child: Column(
       children: <Widget>[
         Container(
           height: 40,
          width: MediaQuery.of(context).size.width - 40,
          //  color: Colors.white,
           child: Text('中铁二局集团建筑有限公司',style: TextStyle(color: Colors.black,fontSize: 20),),
           padding: EdgeInsets.only(
           left: 15,
           top: 15
           ),
            decoration: new BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.only(
         topLeft: Radius.circular(10),
         topRight: Radius.circular(10)
       )
     ),
         ),
         Container(
           height: 35,
           color: Colors.white,
           child: Row(
             children: <Widget>[
               SizedBox(
                 width: 15,
               ),
               Container(
                 child: Text('  债务人  ',style: TextStyle(color: Colors.green),),
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.green,
                     width: 1,
                     style: BorderStyle.solid
                   ),
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(6),
                     bottomRight: Radius.circular(6)
                   )
                 ),
               ),
              SizedBox(
                width: 20,
              ),
               Container(
                 child: Text('  国有企业  ',style: TextStyle(color: Colors.red),),
                  decoration: BoxDecoration(
                   border: Border.all(
                     color: Colors.red,
                     width: 1,
                     style: BorderStyle.solid
                   ),
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(6),
                     bottomRight: Radius.circular(6)
                   )
                 ),
               )
             ],
           ),
         ),
         Container(
           height: 80,
          //  color: Colors.red,
           child: Row(
             children: <Widget>[
               Expanded(
                 child: Container(
                  //  color: Colors.red,
                   child: Column(
                     children: <Widget>[
                       Container(
                         padding: EdgeInsets.only(
                           top: 10
                         ),
                         child: Text('申请金额',style: TextStyle(color: Color(0xff868DA7),fontSize: 13),)
                       ),
                       SizedBox(height: 15,),
                       Container(
                         child: Text('1000000元',style: TextStyle(color: Color(0xff39425F),fontSize: 13),)
                       )
                     ],
                   ),
                 ),
               ),
                 Expanded(
                   /// Expanded 表示均分
                 child: Container(
                  //  color: Colors.blue,
                   child: Column(
                     children: <Widget>[
                       Container(
                         padding: EdgeInsets.only(
                           top: 10
                         ),
                         child: Text('申请期限',style: TextStyle(color: Color(0xff868DA7),fontSize: 13),)
                       ),
                       SizedBox(height: 15,),
                       Container(
                         child: Text('100天',style: TextStyle(color: Color(0xff39425F),fontSize: 13),)
                       )
                     ],
                   ),
                 ),
               ),
                 Expanded(
                 child: Container(
                  //  color: Colors.green,
                   child: Column(
                     children: <Widget>[
                       Container(
                         padding: EdgeInsets.only(
                           top: 10
                         ),
                         child: Text('应收账款金额',style: TextStyle(color: Color(0xff868DA7),fontSize: 13),)
                       ),
                       SizedBox(height: 15,),
                       Container(
                         child: Text('1000000元',style: TextStyle(color: Color(0xff39425F),fontSize: 13),)
                       )
                     ],
                   ),
                 ),
               )
             ],
           ),
         ),
       ],
     ),
      ),
   SizedBox(height: 10,)
        ],
      )
       )
    );
  }
}