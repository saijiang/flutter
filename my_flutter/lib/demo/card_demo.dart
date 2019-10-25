import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            height: 230,
            width: MediaQuery.of(context).size.width - 30,
            // color: Colors.white,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text('债权人',style: TextStyle(color: Colors.black,fontSize: 13),),
                    SizedBox(width: 32,),
                    Text('融资企业测试公司',style: TextStyle(color: Colors.black,fontSize: 13),),
                  ],
                ),
                SizedBox(height: 10,),
                   Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text('申请金额',style: TextStyle(color: Colors.black,fontSize: 13),),
                    SizedBox(width: 20,),
                    Text('100000元',style: TextStyle(color: Colors.black,fontSize: 13),),
                  ],
                ),
                   SizedBox(height: 10,),
                   Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text('申请期限',style: TextStyle(color: Colors.black,fontSize: 13),),
                    SizedBox(width: 20,),
                    Text('1天',style: TextStyle(color: Colors.black,fontSize: 13),),
                  ],
                ),
                   SizedBox(height: 10,),
                   Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text('资金用途',style: TextStyle(color: Colors.black,fontSize: 13),),
                    SizedBox(width: 20,),
                    Text('支付货款',style: TextStyle(color: Colors.black,fontSize: 13),),
                  ],
                ),
                   SizedBox(height: 10,),
                   Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text('还款来源',style: TextStyle(color: Colors.black,fontSize: 13),),
                    SizedBox(width: 20,),
                    Text('企业经营收入',style: TextStyle(color: Colors.black,fontSize: 13),),
                  ],
                ),
                   SizedBox(height: 10,),
                   Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Text('凭证编号',style: TextStyle(color: Colors.black,fontSize: 13),),
                    SizedBox(width: 20,),
                    Text('FR00132343837435345637456',style: TextStyle(color: Colors.black,fontSize: 13),),
                  ],
                ),
              
                   SizedBox(
                  width: MediaQuery.of(context).size.width - 30,
                  height: 11,
                  child: Container(
                    // color: Color(0xffEDEFF4),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10,),
                        Container(
                          color: Color(0xffEDEFF4),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 30,
                            height: 1,
                          ),
                        )
                      ],
                    ),

                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}