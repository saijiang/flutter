import 'package:flutter/material.dart';
import '../controllerPage/order_controller_demo.dart';
import '../controllerPage/home_controller_demo.dart';
import '../controllerPage/time_controller_demo.dart';
import '../controllerPage/mine_controller_demo.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
    
  List<Widget> list = List();
  int _currentIndex = 0;

  void _onTapHandler (int index){
    setState(() {
      _currentIndex = index;
  
    });
  }

   void initState(){
      list
        ..add(CustomHisContrlloer())
        ..add(CustomTimeContrlloer())
        ..add(CustomForWardContrlloer())
        ..add(CustomMineContrlloer());
        super.initState();
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: list[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
        onTap: _onTapHandler,
      
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              title: Text('抢单')
            ),
              BottomNavigationBarItem(
              icon: Icon(Icons.trip_origin),
              title: Text('订单')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('我的')
            ),
          ],
       
        ),
    );

  }
}






/*
class  CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
         
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
        
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.highlight),
              title: Text('his')
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              title: Text('time')
            ),
              BottomNavigationBarItem(
              icon: Icon(Icons.accessible_forward),
              title: Text('forward')
            ),
          ],
        );
  }
}
*/