import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  @override
  _listviewState createState() => _listviewState();
}

class _listviewState extends State<listview> {
  final items=List<String>.generate(10, (i) => "Subject $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: Text("data"),
      //   backgroundColor:Colors.transparent ,
      // ),
      body: SingleChildScrollView(
          child: Container(
          child: Column(
            children: [
                  Container(
                    height: 200.0,
                    child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:items.length,
                    itemBuilder:(context,i){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(colors: [Colors.orange,Colors.orangeAccent])
                        ),
                        height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width*0.8,
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(10.0),
                        child: Center(child: Text("${items[i]}",style:TextStyle(fontSize: 30.0,color: Colors.white,fontWeight:FontWeight.bold))),
                      );
                    }
                ),
              ),
               Container(
                    height: 200.0,
                    child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:items.length,
                    itemBuilder:(context,i){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(colors: [Colors.blue,Colors.blueAccent])
                        ),
                        height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width*0.8,
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(10.0),
                        child: Center(child: Text("${items[i]}",style:TextStyle(fontSize: 30.0,color: Colors.white,fontWeight:FontWeight.bold))),
                      );
                    }
                ),
              ),
               Container(
                    height: 200.0,
                    child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:items.length,
                    itemBuilder:(context,i){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(colors: [Colors.purple,Colors.purpleAccent])
                        ),
                        height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width*0.8,
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(10.0),
                        child: Center(child: Text("${items[i]}",style:TextStyle(fontSize: 30.0,color: Colors.white,fontWeight:FontWeight.bold))),
                      );
                    }
                ),
              ),
               Container(
                    height: 200.0,
                    child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:items.length,
                    itemBuilder:(context,i){
                      return GestureDetector(
                        onTap: (){
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text("${items[i]} is Clicked"),
                          ));
                        },
                          child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            gradient: LinearGradient(colors: [Colors.green,Colors.greenAccent])
                          ),
                          height: MediaQuery.of(context).size.height*0.2,
                          width: MediaQuery.of(context).size.width*0.8,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(10.0),
                          child: Center(child: Text("${items[i]}",style:TextStyle(fontSize: 30.0,color: Colors.white,fontWeight:FontWeight.bold))),
                        ),
                      );
                    }
                ),
              ),
               Container(
                    height: MediaQuery.of(context).size.height*0.8,
                    child: ListView.builder(
                    itemCount:items.length,
                    itemBuilder:(context,i){
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(colors: [Colors.blue,Colors.purple])
                        ),
                        height: MediaQuery.of(context).size.height*0.2,
                        width: MediaQuery.of(context).size.width*0.8,
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(10.0),
                        child: Center(child: Text("${items[i]}",style:TextStyle(fontSize: 30.0,color: Colors.white,fontWeight:FontWeight.bold))),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ));
  }
}