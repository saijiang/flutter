import 'package:flutter/material.dart';

class ImageIconApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图片及Icon'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('  Flutter中，我们可以通过Image组件来加载并显示图片，Image的数据源可以是asset、文件、内存以及网络。'),
           Text(
             '加载本地图片',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red
              ),
           ),
            Image(
              image: AssetImage('images/invite_img1.png'),
              width: 100,
            ),
            Text(
             '加载网络图片',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green
              ),
           ),
           Image(
             image: NetworkImage('http://i1.sinaimg.cn/ent/d/2008-06-04/U105P28T3D2048907F326DT20080604225106.jpg'),
             width: 200,
            fit: BoxFit.cover,
           )
          
          ],
        ),
      ),
    );
  }
}