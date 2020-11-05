import 'package:flutter/material.dart';
import 'package:windows_trial/moblie/coming.dart';
import 'package:windows_trial/moblie/download.dart';
import 'package:windows_trial/moblie/home.dart';
import 'package:windows_trial/moblie/search.dart';

class NetflixMobo extends StatefulWidget {
  @override
  _NetflixMoboState createState() => _NetflixMoboState();
}

class _NetflixMoboState extends State<NetflixMobo> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomeM(),SearchM(),ComingSeires(),downloadM(),HomeM(),];
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
      body: _children[_currentIndex],
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
        currentIndex: _currentIndex,
        onTap:(i){onTabTapped(i);},
      ),
    );
  }
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}
