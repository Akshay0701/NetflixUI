import 'package:flutter/material.dart';
import 'package:windows_trial/widgets/boxMoivew.dart';
import 'package:windows_trial/widgets/recSeries.dart';

class HomeM extends StatefulWidget {
  @override
  _HomeMState createState() => _HomeMState();
}

class _HomeMState extends State<HomeM> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      );
  }
createBackGroundImage(){
     return Container(
          padding: EdgeInsets.all(0.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
            // Container(
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(colors: [Colors.black,Colors.black87,Colors.black26,Colors.transparent],begin: Alignment.topLeft,end: Alignment.topRight
            //     ),
            //   ),
            // ),
            Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.black,Colors.black38,Colors.black12,Colors.transparent],begin: Alignment.bottomCenter,end: Alignment.topCenter
                  ),
                ),
              ),
          ],),
          alignment: Alignment.bottomLeft,
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 1.0, 
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage("assest/box5.png",),fit: BoxFit.cover),
          ),
        );
  }
  createListofSeries(){
    String title="Royality Action Politics Historical Docuseiers";
    return Container(
        margin: EdgeInsets.only(left: 0.0,right: 0.0,top:50.0),
        // height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        // color: Colors.orangeAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            SizedBox(height: MediaQuery.of(context).size.height*0.4,),
            Container(margin: EdgeInsets.only(left:20.0),width: 60,height: 20,
              decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage("assest/netlogo.png",),fit: BoxFit.cover),
            ),
            ),
            SizedBox(height: 5.0,),
            Container(margin: EdgeInsets.only(left:20.0),width:260,height:100,
             decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage("assest/dd.png",),fit: BoxFit.cover),
            ),
            ),
            // SizedBox(height: 5.0,),
            // Container(margin: EdgeInsets.only(left:20.0,top:0.0),width:MediaQuery.of(context).size.width*1,
            // height: 40,
            // child:Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Text("",style: TextStyle(color: Colors.white,fontWeight:FontWeight.normal,letterSpacing: 2.0,fontSize: 15//MediaQuery.of(context).size.width*0.015<15?15:MediaQuery.of(context).size.height*0.015,
            //     )),
            //   ),
            // ),
            // ),
            SizedBox(height:25.0,),
            Center(
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                  height: 50,
                  width: 100,
                  padding: EdgeInsets.only(left:20.0),
                  child: IconButton(
                  color: Colors.white12,
                  onPressed: () {  },
                  icon: Icon(Icons.add,color: Colors.white70,size: 30.0,),
                  )),
                ),
                Expanded(
                  child: Container(
                  height: 50,
                  width: 150,
                  padding: EdgeInsets.only(left:20.0),
                  child: FlatButton(
                  color: Colors.white,
                  onPressed: () {  },
                  child: Text("Play",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 26.0),),
                  ),
              ),
                ),
              Expanded(
                  child: Container(
                  height: 50,
                  width: 100,
                  padding: EdgeInsets.only(left:20.0),
                  child: IconButton(
                  color: Colors.white12,
                  onPressed: () {  },
                  icon: Icon(Icons.info_outline,color: Colors.white70,size: 30.0,),
                  ),
                ),
              ),
              ],),
            ),
            SizedBox(height: 10.0,),
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
                    height:  170,
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
                            height: 170,
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
