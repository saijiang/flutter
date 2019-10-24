import 'package:flutter/material.dart';

class CustomCellView extends StatefulWidget {
  @override
  _CustomCellViewState createState() => _CustomCellViewState();
}

class _CustomCellViewState extends State<CustomCellView> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      // color: Colors.blue,
      height: 200,
      width: 200,
     decoration: new BoxDecoration(
       color: Colors.red,
       border: Border(
         top: BorderSide(
           color: Colors.indigoAccent[100],
           width: 3.0,
           style: BorderStyle.solid
         )
       ),
     ),
    );
  }
}