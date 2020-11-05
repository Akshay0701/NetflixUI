import 'package:flutter/material.dart';
import 'package:windows_trial/models/series.dart';
import 'package:windows_trial/widgets/serieswidget.dart';


class downloadM extends StatefulWidget {
  @override
  _downloadMState createState() => _downloadMState();
}

class _downloadMState extends State<downloadM> {
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.only(top:00.0),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          SizedBox(height:00.0),
          createListOfcomingShows(),
        ],
      ),
    );
  }
   createListOfcomingShows() {
      List<Seires> seireslist=[];
      for(int i=0;i<3;i++){
        Seires seire= Seires(
          date:"0$i/01/2020",
          title:"Download No $i",
          imageUrl:"box$i.png",
        );
        seireslist.add(seire);
      }
      return Container(
            margin: EdgeInsets.only(left:10.0),
            height:  MediaQuery.of(context).size.height*0.93,
            child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount:3,
            itemBuilder:(context,i){
              return downloadWidget(seireslist[i]);
            }
        ),
      );
}
}

// ignore: must_be_immutable
class downloadWidget extends StatefulWidget {
  Seires seires;
  downloadWidget(this.seires);
  @override
  _downloadWidgetState createState() => _downloadWidgetState();
}

class _downloadWidgetState extends State<downloadWidget> {
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
        trailing: Icon(Icons.download_done_outlined,color: Colors.white),
        isThreeLine: true,
      ),
    ));
  }
}