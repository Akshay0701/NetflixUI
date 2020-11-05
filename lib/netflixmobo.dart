import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NetflixMobo extends StatefulWidget {
  @override
  _NetflixMoboState createState() => _NetflixMoboState();
}

class _NetflixMoboState extends State<NetflixMobo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: Image(image: AssetImage("assest/netlogo.png"),fit: BoxFit.fitWidth,height: 30,width: 70,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:30.0,top: 10.0),
            child: Text("Series",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
          ),
           Padding(
            padding: const EdgeInsets.only(right:30.0,top: 10.0),
            child: Text("My List",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
          ),
           Padding(
            padding: const EdgeInsets.only(right:30.0,top: 10.0),
            child: Text("Flims",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
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
       bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 12,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Coming Soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_download),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: 0,
        onTap:(i){
          Fluttertoast.showToast(
              msg: "Clicked Item $i",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 14.0
          );
        },
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