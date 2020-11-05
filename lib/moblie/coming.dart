import 'package:flutter/material.dart';
import 'package:windows_trial/models/series.dart';
import 'package:windows_trial/widgets/serieswidget.dart';

class ComingSeires extends StatefulWidget {
  @override
  CcominSeiresgState createState() => CcominSeiresgState();
}

class CcominSeiresgState extends State<ComingSeires> {
  
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
      for(int i=0;i<10;i++){
        Seires seire= Seires(
          date:"0$i/01/2020",
          title:"this is Title no $i",
          imageUrl:"box$i.png",
        );
        seireslist.add(seire);
      }
      return SingleChildScrollView(
              child: Container(
              margin: EdgeInsets.only(left:10.0),
              height:  MediaQuery.of(context).size.height*0.93,
              child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount:10,
              itemBuilder:(context,i){
                return SeriesWidget(seireslist[i]);
              }
          ),
        ),
      );
}
}


