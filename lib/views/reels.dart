import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class reels extends StatefulWidget {
  @override
  _reelsState createState() => _reelsState();
}

class _reelsState extends State<reels>{
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height /100;
    width = width / 100;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset('assets/tenor.gif',fit: BoxFit.cover,),
          ),
          Column(
            children: [
              Container(
                height: height * 5,
                child: Row(
                  children: [
                    SizedBox(width: width * 1,),
                    Text("MX Tak TAk",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        letterSpacing: 1,
                    ),),
                    SizedBox(width: width * 60,),
                    Icon(Icons.camera_alt_outlined,size: 25,)
                  ],
                ),
              ),
              SizedBox(height: height * 62,),
              Container(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/26.jpg"),
                  ),
                  title: Text("downey_._.jr ◾ Follow",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      fontFamily: 'fantasy'
                  ),),
                ),
              ),
              Container(
                height: height * 3,
                child: Row(
                  children: [
                    SizedBox(width: 5 * width,),
                    Icon(FontAwesomeIcons.music,size: 15,color: Colors.white,),
                    SizedBox(width: 5 * width,),
                    Text("Avengers ◽ Iron Man Funny",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          fontFamily: 'fantasy'
                      ),)
                  ],
                ),
              ),
              Container(
                height: height * 6,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.favorite_border,size: 35,color: Colors.white,),
                    SizedBox(width: 10,),
                    Icon(FontAwesomeIcons.comment,size: 30,color: Colors.white,),
                    SizedBox(width: 10,),
                    Icon(FontAwesomeIcons.telegramPlane,size: 35,color: Colors.white,),
                    SizedBox(width: 10,),
                    Icon(Icons.more_horiz_outlined,size: 29,color: Colors.white,),
                    SizedBox(width: 85,),
                    Text("❤154k",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                    SizedBox(width: 15,),
                    Text("🗨190",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),)
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
