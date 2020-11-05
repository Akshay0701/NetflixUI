import 'package:flutter/material.dart';
import 'package:windows_trial/models/series.dart';


// ignore: must_be_immutable
class SeriesWidget extends StatefulWidget {
  Seires seires;
  SeriesWidget(this.seires);
  @override
  _SeriesWidgetState createState() => _SeriesWidgetState();
}

class _SeriesWidgetState extends State<SeriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width*1.0,
      height: 100,
      child: Card(
      color: Colors.grey[850],
      child: ListTile(
        leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 44,
              minHeight: 44,
              maxWidth: 64,
              maxHeight: 64,
            ),
            child: Image.asset("assest/${widget.seires.imageUrl}", fit: BoxFit.cover),
          ),
        //  Container(
        //     width: 150,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(0.0)),
        //       image:DecorationImage(image: AssetImage("assest/${widget.seires.imageUrl}",),fit: BoxFit.cover),
        //       // gradient: LinearGradient(colors: [Colors.white12,Colors.white12])
        //     ),
        //   padding: EdgeInsets.symmetric(vertical: 4.0),
        //   alignment: Alignment.center,
        // ),
        title: Text('${widget.seires.title}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        subtitle: Text(
          'A sufficiently long subtitle warrants three lines.'
          ,style: TextStyle(color: Colors.white70),
        ),
        trailing: Icon(Icons.more_vert,color: Colors.white),
        isThreeLine: true,
      ),
    ));
  }
}