import 'package:flutter/material.dart';
import '../model/post.dart';
///列表
class HomeListView extends StatelessWidget {

Widget _listItemBuilder(BuildContext context,int index){
  return Container(
color: Colors.white,
margin: EdgeInsets.all(8.0),
child: Column(
  children: <Widget>[
    Image.network(posts[index].imageUrl),
    SizedBox(
height: 16.0,
    ),

    Text(
      posts[index].title,
      style: TextStyle(
        fontSize: 20,
        color: Colors.yellow
      ),
    ),
   Text(
     posts[index].authour,
     style: TextStyle(
       color: Colors.blue,
       fontSize: 15
     ),
     textAlign: TextAlign.right,
     textDirection: TextDirection.rtl,
   ),
   SizedBox(
height: 16.0,
   ),
  ],
),
  );
}

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //    title: Text('列表'),
      //    elevation: 5,
      //  ),
       body: ListView.builder(
         itemCount: posts.length,
         itemBuilder: _listItemBuilder,
       )
    );
  }
}

class CustomTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
      //  Icon(Icons.local_activity,size: 120,color: Colors.black12,),
       HomeListView(),
       Icon(Icons.local_airport,size: 120,color: Colors.blueGrey,),
       Icon(Icons.local_bar,size: 120,color: Colors.blue,),
      ],
    );
  }
}