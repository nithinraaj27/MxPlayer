import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mxplayer/Details/Details.dart';
import 'package:mxplayer/model/Moviees.dart';

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  List<Movies> sl = [];
  List<Movies> sll = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sl = songslist();
    sll = songplaylist();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height / 100;
    width = width / 100;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20 * height,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: sl.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return topmovie(
                      img: sl[index].img,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 15 * height,
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    children: [
                      Expanded(
                          child: round(height, width, "My Favorite", Icons.favorite,
                              Colors.pink)),
                      Expanded(
                          child: round(height, width, "My Playlist",
                              Icons.menu_open_outlined, Colors.yellow)),
                      Expanded(
                          child: round(height, width, "Local Music",
                              Icons.folder_open_rounded, Colors.blue)),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Handpicked for you",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "SEE MORE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 1,
              ),
              Container(
                height: 22 * height,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: sll.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return topmovie(
                      img: sll[index].img,
                    );
                  },
                ),
              ),
              SizedBox(height: height * 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Made For You",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      "SEE MORE",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20 * height,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: sl.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return topmovie(
                      img: sl[index].img,
                    );
                  },
                ),
              ),
            ],
          ),
      ),
    );
  }

  Column round(
      double height, double width, String name, IconData iname, Color cl) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 8 * height,
          width: 40 * width,
          decoration: BoxDecoration(
            color: cl,
            shape: BoxShape.circle,
          ),
          child: Icon(
            iname,
            size: 40,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: height * 1,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

class topmovie extends StatelessWidget {
  final String? img;

  const topmovie({required this.img});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height / 100;
    width = width / 100;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 18 * height,
        width: 50 * width,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
            image: new DecorationImage(
                image: new AssetImage(img!), fit: BoxFit.fill)),
      ),
    );
  }
}

class list2 extends StatelessWidget {
  final String? img;

  const list2({this.img});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height / 100;
    width = width / 100;
    return Container(
      height: height * 22,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
            child: Container(
              height: height * 16,
              width: width * 40,
              decoration: BoxDecoration(
                  image: new DecorationImage(
                      image: AssetImage(img!), fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Text(
              "Pop songs",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
