import 'package:flutter/material.dart';
import 'package:my_flutter/demo/card_demo.dart';

class CustomFianactionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('融资列表申请'),
        centerTitle: true,//标题居中显示 默认flase 不遵循android的md设计，都是按照苹果的设计来的
      ),
      body: Container(
        color: Color(0xffEDEFF4),
        child: Column(
          children: <Widget>[
              CustomCompyMessageView(),
              CustomCardView(),
          ],
        ),
      ),
    );
  }
}

class CustomCompyMessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          SizedBox(width: 15,),
          Text('债务人 :',style: TextStyle(color: Colors.black,fontSize: 13),),
          Text('中铁二局集团建筑有限公司',style: TextStyle(color: Colors.black,fontSize: 13),),
         SizedBox(width: 10,),
          Container(
            //  color: Colors.blue,
             height: 25,
             child: Text('  国有企业  '),
             decoration: BoxDecoration(
                 color: Colors.white,
               borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)
               ),
               border: Border.all(
                 color: Colors.blue,
                 width: 1,
                 style: BorderStyle.solid
               )
             ),
          ),
          
        ],
      ),
    );
  }
}