import 'package:flutter/material.dart';
import 'package:windows_trial/widgets/boxMoivew.dart';
import 'package:windows_trial/widgets/recSeries.dart';
class SearchM extends StatefulWidget {
  @override
  _SearchMState createState() => _SearchMState();
}

class _SearchMState extends State<SearchM> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:100.0),
      color: Colors.black,
      child: Column(
        children:[
          createSearchBar(),
        ],
      ),
    );
  }
   createSearchBar(){
    return  Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 1.0,
      child: SingleChildScrollView(
          child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  bottomRight:Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 15,
              left: 15,
              child: GestureDetector(
                onTap: null,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: Text("Search",style: TextStyle(color: Colors.white),),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: null)
                      ),
                    ],
                  ),
                ),
              ),
            ),
            createList(),
          ],
        ),
      ),
    );
  }
    createList(){
    return Expanded(
          child: Container(
        // color: Colors.orangeAccent,
        width: MediaQuery.of(context).size.width * 1.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
              SizedBox(height:100.0),
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
      ),
    );
  }
}

