import 'package:flutter/material.dart';

class NetflixHome extends StatefulWidget {
  @override
  _NetflixHomeState createState() => _NetflixHomeState();
}

class _NetflixHomeState extends State<NetflixHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        color: Colors.black,
        child: SingleChildScrollView(
            child: Stack(
            children:[
              createBackGroundImage(),
              createListofSeries(),
            ],
          ),
        ),
      ),
    );
  }
  createBackGroundImage(){
    return Container(
          padding: EdgeInsets.all(0.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
            Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.black,Colors.black87,Colors.black26,Colors.transparent],begin: Alignment.topLeft,end: Alignment.topRight
                ),
              ),
            ),
            Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.black38,Colors.black12,Colors.transparent],begin: Alignment.bottomCenter,end: Alignment.topCenter
                  ),
                ),
              ),
          ],),
          alignment: Alignment.bottomLeft,
          height: MediaQuery.of(context).size.height * 0.9,
          width: MediaQuery.of(context).size.width * 1.0, 
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage("assest/rec9.png",),fit: BoxFit.cover),
          ),
        );
  }
  createListofSeries(){
    String title="When a young boy vanishes , a small town uncovers a mystery involving secret  exprienments ,terrifyting supernatural froces and a strange little girl.";
    return Container(
        margin: EdgeInsets.only(left: 0.0,right: 0.0,top:50.0),
        // height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        // color: Colors.orangeAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height: 20.0,),
            Container(margin: EdgeInsets.only(left:20.0),width: MediaQuery.of(context).size.width * 0.08,height: MediaQuery.of(context).size.height * 0.04,
              decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage("assest/netlogo.png",),fit: BoxFit.cover),
            ),
            ),
            SizedBox(height: 20.0,),
            Container(margin: EdgeInsets.only(left:20.0),width:MediaQuery.of(context).size.width*0.3,height:MediaQuery.of(context).size.height*0.2,
             decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage("assest/logo.png",),fit: BoxFit.cover),
            ),
            ),
            SizedBox(height: 10.0,),
            Container(margin: EdgeInsets.only(left:20.0,top:10.0),width:MediaQuery.of(context).size.width*0.3,
            height: MediaQuery.of(context).size.height*0.12,
            child:Text("$title",style: TextStyle(color: Colors.white70,fontWeight:FontWeight.normal,fontSize: MediaQuery.of(context).size.height*0.025//MediaQuery.of(context).size.width*0.015<15?15:MediaQuery.of(context).size.height*0.015,
            )),
            ),
            SizedBox(height: 10.0,),
            Row(
            children: [
              Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.15,
              padding: EdgeInsets.only(left:20.0),
              child: FlatButton(
              color: Colors.white,
              onPressed: () {  },
              child: Text("Play",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 26.0),),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.15,
              padding: EdgeInsets.only(left:20.0),
              child: FlatButton(
              color: Colors.white12,
              onPressed: () {  },
              child: Text("More Info",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 26.0),),
              ),
            ),
            ],),
            SizedBox(height: 30.0,),
            createList(),
          ]
        ),
    );
  }
  createList(){
    return Container(
      // color: Colors.orangeAccent,
      width: MediaQuery.of(context).size.width * 1.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
            SizedBox(height:20.0),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text("Recent Shows",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 26.0),),
                  ),
                  Container(
                            margin: EdgeInsets.only(left:10.0),
                            height:  MediaQuery.of(context).size.height*0.32,
                            child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:10,
                            itemBuilder:(context,i){
                              return boxMoivew(i);
                            }
                        ),
                      ),
              SizedBox(height:20.0),
           Padding(
             padding: const EdgeInsets.only(left:20.0),
             child: Text("Trending Now",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 26.0),),
           ),
           Container(
                    padding: EdgeInsets.only(left:10.0),
                    height:  MediaQuery.of(context).size.height*0.25,
                    child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:10,
                    itemBuilder:(context,i){
                      return recSeries(i);
                    }
                ),
              ),
              SizedBox(height:20.0),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text("New Shows",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 26.0),),
                  ),
                  Container(
                            padding: EdgeInsets.only(left:10.0),
                            height: MediaQuery.of(context).size.height*0.25,
                            child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:10,
                            itemBuilder:(context,i){
                              return recSeries(i);
                            }
                        ),
                      ),
                  SizedBox(height:20.0),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text("Recent Shows",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 26.0),),
                  ),
                  Container(
                        margin: EdgeInsets.only(left:10.0),
                        height: MediaQuery.of(context).size.height*0.32,
                        child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:10,
                        itemBuilder:(context,i){
                          return boxMoivew(i);
                        }
                    ),
                  ),
                  SizedBox(height:20.0),
        ],
      ),
    );
  }
}
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
            height: MediaQuery.of(context).size.height*0.32,
            width:  MediaQuery.of(context).size.width*0.12,
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.all(10.0),
          );
  }
}
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
            
            height: MediaQuery.of(context).size.height*0.06,
            width: MediaQuery.of(context).size.width*0.2,
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.all(10.0),
          );
  }
}