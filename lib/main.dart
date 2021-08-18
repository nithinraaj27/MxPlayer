import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mxplayer/views/game.dart';
import 'package:mxplayer/views/local.dart';
import 'package:mxplayer/views/music.dart';
import 'package:mxplayer/views/reels.dart';
import 'package:mxplayer/views/video.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height /100;
    width = width / 100;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_circle_fill_outlined,color: Colors.white,size: 10 * height,),
            SizedBox(height: 1* height,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("MX",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white
                  ),),
                Text("PLAYER",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Colors.white
                  ),),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late int _selectedIndex = 0;
  List<Widget> _widget = [
    Local(),
    video(),
    game(),
    reels(),
    Music(),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height /100;
    width = width / 100;
    return SafeArea(child: Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: height * 25,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.userCircle,size: height * 5,color: Colors.white,),
                        SizedBox(width: width * 3,),
                        Text("Sign In",style: TextStyle(fontSize: height * 3,color: Colors.white),),
                      ],
                    ),
                  ),
                  Container(
                    height: height * 7,
                    width: width * 68,
                    color: Colors.white24,
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.dollarSign,color: Colors.yellow.shade400,),
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0,left: 1),
                          child: Text("50",style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                        SizedBox(width: width * 25,),
                        Container(
                          alignment: Alignment.center,
                          height: height * 4,
                          width: width * 29,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 3,color: Colors.white)
                          ),
                          child: Text("Redeem Now",style: TextStyle(color: Colors.white,letterSpacing: 1),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(FontAwesomeIcons.heart,size: 25,color: Colors.white,),
                      Icon(FontAwesomeIcons.shareAlt,size: 25,color: Colors.white,),
                      Icon(FontAwesomeIcons.bell,size: 25,color: Colors.white,)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2,),
            tile(Icons.language,"App Language"),
            Divider(height: height * 1,color: Colors.grey.shade400,),
            tile(FontAwesomeIcons.cloudMoon,"Dark Theme"),
            Divider(height: height * 1,color: Colors.grey.shade400,),
            tile(FontAwesomeIcons.whatsapp,"Whatsapp Status"),
            Divider(height: height * 1,color: Colors.grey.shade400,),
            tile(Icons.privacy_tip,"Privacy"),
            Divider(height: height * 1,color: Colors.grey.shade400,),
            tile(Icons.equalizer,"Equalizer"),
            Divider(height: height * 1,color: Colors.grey.shade400,),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.play_circle_fill_outlined,size: 35,),
            SizedBox(width: 2 * width,),
            Text("MX",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                fontSize: 25,
              ),),
            Text("PLAYER",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
              ),),
          ],
        ),
        actions: [
          Icon(Icons.download,size: height * 4,),
          SizedBox(width: width * 3,),
          Icon(Icons.search,size: height * 4),
          SizedBox(width: height * 3,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int value)
        {
          setState(() {
            _selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blue,
        unselectedLabelStyle: TextStyle(color: Colors.blue),
        items: [
          BottomNavigationBarItem(
              icon: _selectedIndex == 0 ? Icon(FontAwesomeIcons.folderOpen) : Icon(FontAwesomeIcons.folder),
            title: Text("Local"),
          ),
          BottomNavigationBarItem(
          icon: _selectedIndex == 1 ? Icon(Icons.play_circle_fill) : Icon(Icons.play_circle_outline),
            title: Text("Video"),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2 ? Icon(Icons.videogame_asset) : Icon(Icons.videogame_asset_outlined),
            title: Text("Games"),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3 ? Icon(Icons.movie) : Icon(Icons.movie_creation_outlined),
            title: Text("TakaTak"),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4 ? Icon(Icons.music_note) : Icon(Icons.music_off_outlined),
            title: Text("Music"),
          ),
        ],
      ),
      body: _widget[_selectedIndex],
    ));
  }

  ListTile tile(IconData ic,String name) {
    return ListTile(
            leading: Icon(ic,size: 30,color: Colors.black,),
            title: Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          );
  }
}

