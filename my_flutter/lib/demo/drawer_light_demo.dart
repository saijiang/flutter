import 'package:flutter/material.dart';

class DrawerLigtt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,//获取屏幕宽度
      color: Colors.white,
      // padding: EdgeInsets.all(8.0),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
       UserAccountsDrawerHeader(
//用户信息控件
           accountEmail: Text('jiangsai0218@163.com',style: TextStyle(fontSize: 20,color: Colors.blue),),
           accountName: Text('姜赛',style: TextStyle(fontSize: 25,color: Colors.black12),),
           currentAccountPicture: CircleAvatar(
             child: Image.network(
                    'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1571725696&di=0da25a04f7afd1e898bbf64e37c7009b&src=http://pic43.nipic.com/20140701/18568311_135837338000_2.jpg',
                    fit: BoxFit.cover,  
                    repeat: ImageRepeat.repeat,             
             ),
           ),
           
       ),
            ListTile(
            title: Text('message',textAlign: TextAlign.right,),
            trailing: Icon(Icons.message,color: Colors.black26,size: 20,),
            onTap: () => Navigator.pop(context) ,//点击取消抽屉
          ),
            ListTile(
            title: Text('message',textAlign: TextAlign.right,),
            trailing: Icon(Icons.mic_none,color: Colors.black26,size: 20,),
          ),
            ListTile(
            title: Text('message',textAlign: TextAlign.right,),
            trailing: Icon(Icons.access_alarm,color: Colors.black26,size: 20,),
          ),
        ],
      )
    );
  }
}

class DrawerRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
      padding: EdgeInsets.all(80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '右抽屉效果',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            
          )
          )
        ],
      ),
    );
  }
}