import 'package:flutter/material.dart';

class boxMoivew extends StatefulWidget {
  final int itemsNo;
  boxMoivew(this.itemsNo);
  @override
  _boxMoivewState createState() => _boxMoivewState();
}

class _boxMoivewState extends State<boxMoivew> {
  @override
  Widget build(BuildContext context) {
    return  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
              image:DecorationImage(image: AssetImage("assest/box${widget.itemsNo}.png",),fit: BoxFit.cover),
              // gradient: LinearGradient(colors: [Colors.white12,Colors.white12])
            ),
            height: 100,
            width:  140,
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.all(10.0),
          );
  }
}
