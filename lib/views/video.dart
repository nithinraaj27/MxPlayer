import 'package:flutter/material.dart';
import 'package:mxplayer/views/Home.dart';

class video extends StatefulWidget {
  @override
  _videoState createState() => _videoState();
}

class _videoState extends State<video> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height /100;
    width = width / 100;
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              height: 50 * height,
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 4 * width),
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                  ),
                  Tab(
                    text: "WEB SHOWS",
                  ),
                  Tab(
                    text: "MOVIES",
                  ),
                  Tab(
                    text: "TV",
                  ),
                  Tab(
                    text: "MX VIDEOS",
                  ),
                  Tab(
                    text: "NEWS",
                  ),
                  Tab(
                    text: "MUSIC",
                  ),
                  Tab(
                    text: "BUZZ",
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              VHome(),
              Center(child: Text("WEB SHOWS"),),
              Center(child: Text("MOVIEES"),),
              Center(child: Text("TV"),),
              Center(child: Text("MX VIDEOS"),),
              Center(child: Text("NEWS"),),
              Center(child: Text("MUSIC"),),
              Center(child: Text("BUS"),),
            ],
          ),
        )
    );
  }
}
