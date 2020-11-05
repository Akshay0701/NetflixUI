import 'package:flutter/material.dart';

class recSeries extends StatefulWidget {
  final int itemsNo;
  recSeries(this.itemsNo);

  @override
  _recSeriesState createState() => _recSeriesState();
}

class _recSeriesState extends State<recSeries> {
   @override
  Widget build(BuildContext context) {
    return  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0.0)), 
              image:DecorationImage(image: AssetImage("assest/rec${widget.itemsNo}.png",),fit: BoxFit.cover),
              // gradient: LinearGradient(colors: [Colors.white12,Colors.white12])
            ),
            
            height: 50,
            width: 250,
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.all(10.0),
          );
  }
}