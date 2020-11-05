import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        color: Colors.black87,
        child: Row(
          children:[
            createLeftMenu(),
            createMiddle(),
            createRightSlide(),
          ],
        ),
      ),
    );
  }
  createLeftMenu(){
      return Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 0.15,
        color: Colors.black87,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: const EdgeInsets.only(left:17.0),
              child: Icon(Icons.dehaze,color: Colors.white,),
            ),
            SizedBox(height: 40.0,),
            ListTile(
            leading: Icon(Icons.home_filled,color: Colors.white,size: 30.0,),
            title: Text('Home',style: TextStyle(color: Colors.white),),
            onTap: () {},
          ),
           SizedBox(height: 20.0,),
            ListTile(
            leading: Icon(Icons.open_in_browser_outlined,color: Colors.white,size: 30.0,),
            title: Text('Browse',style: TextStyle(color: Colors.white),),
            onTap: () {},
          ),
           SizedBox(height: 20.0,),
            ListTile(
            leading: Icon(Icons.radio_button_checked,color: Colors.white,size: 30.0,),
            title: Text('Radio',style: TextStyle(color: Colors.white),),
            onTap: () {},
          ),
          SizedBox(height: 40.0,),
          Text(
            "Your Library",
            style: TextStyle(fontSize: 15.0,color: Colors.white54),
          ),
          SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
            SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
            SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
            SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
            SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
             SizedBox(height: 40.0,),
          Text(
            "Playlists",
            style: TextStyle(fontSize: 15.0,color: Colors.white54),
          ),
          SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
            SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
            SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
            SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
            SizedBox(height: 10.0,),
          Text(
            "Made For You",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white60),
          ),
          ],
        ),
      );
  }
  createMiddle(){
      return SingleChildScrollView(
          child: Container(
          width: MediaQuery.of(context).size.width * 0.68,
          color: Colors.black54,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Container(
                height: MediaQuery.of(context).size.width*0.15,
                width: MediaQuery.of(context).size.width*0.68,
                decoration:  BoxDecoration(
                    image:DecorationImage(image: NetworkImage("https://memphismusicindustry.com/wp-content/uploads/2014/02/MJF_FacebookBanner.jpg"),fit: BoxFit.cover),)
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text("Top 10",style: TextStyle(letterSpacing: 2.0,color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10.0),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://a10.gaanacdn.com/images/playlists/24/1075124/crop_480x480_1586626360_1075124.jpg"),),
                      ),
                      Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://i.pinimg.com/originals/da/18/3e/da183e46c3de1eaefa4f6705ca9a50dd.jpg"),),
                      ),
                      Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/eclipse-mixtape-cover-music-cd-design-template-b6bf8293632bce2ad98c1c4ab6752e1d_screen.jpg?ts=1571589565"),),
                      ),
                        Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs/715018/original/9b27a8924c7f731580084bb894550bf8696223c6/design-your-album-cover.jpg"),),
                      ),
                        Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/cool-music-album-cover-design-template-3324b2b5c69bb9a3cfaed14c71f24ca8_screen.jpg?ts=1572456482"),),
                      ),
                        Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://a10.gaanacdn.com/images/playlists/24/1075124/crop_480x480_1586626360_1075124.jpg"),),
                      ),
                  ],
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text("Recent",style: TextStyle(letterSpacing: 2.0,color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10.0),
                    SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://www.melodynest.com/wp-content/uploads/2019/06/SPACE_album-mock.jpg"),),
                      ),
                       Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://i.pinimg.com/originals/1c/e4/c8/1ce4c8a443d1782e1129c1e4c9215645.jpg"),),
                      ),
                       Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://i.pinimg.com/originals/41/a0/59/41a0593ec5c6562e838f349aba5ae9ef.jpg"),),
                      ),
                       Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/en/8/80/Eminem_-_Music_to_Be_Murdered_By.png"),),
                      ),
                       Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://www.melodynest.com/wp-content/uploads/2019/06/SPACE_album-mock.jpg"),),
                      ),
                       Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://www.melodynest.com/wp-content/uploads/2019/06/SPACE_album-mock.jpg"),),
                      ),
                  ],
                  ),
                ),        
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text("Trending",style: TextStyle(letterSpacing: 2.0,color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10.0),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://a10.gaanacdn.com/images/playlists/24/1075124/crop_480x480_1586626360_1075124.jpg"),),
                      ),
                      Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://a10.gaanacdn.com/images/playlists/24/1075124/crop_480x480_1586626360_1075124.jpg"),),
                      ),
                      Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://a10.gaanacdn.com/images/playlists/24/1075124/crop_480x480_1586626360_1075124.jpg"),),
                      ),
                        Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://a10.gaanacdn.com/images/playlists/24/1075124/crop_480x480_1586626360_1075124.jpg"),),
                      ),
                        Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://a10.gaanacdn.com/images/playlists/24/1075124/crop_480x480_1586626360_1075124.jpg"),),
                      ),
                        Container( 
                        height: MediaQuery.of(context).size.width*0.15,
                        width: MediaQuery.of(context).size.width*0.15,
                        padding: EdgeInsets.all(20.0),
                        child: Image(image: NetworkImage("https://a10.gaanacdn.com/images/playlists/24/1075124/crop_480x480_1586626360_1075124.jpg"),),
                      ),
                  ],
                  ),
                ),
            ]
          ),
        ),
      );
  }
  createRightSlide(){
      return SingleChildScrollView(
              child: Container(
          width: MediaQuery.of(context).size.width * 0.17,
          padding: EdgeInsets.all(10.0),
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text(
              "Friends Activity",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),
            ),
            SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
               SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
               SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
               SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
               SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
               SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
                 SizedBox(height: 20.0,),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.17,
              child: Row(
                children:[
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: NetworkImage("https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg"),
                    ),
                  SizedBox(width: 10.0,),
                  Text(
                    "Sample Name",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ],
              ),
            ),
            ],
          ),
        ),
      );
  }
}