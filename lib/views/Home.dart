import 'package:flutter/material.dart';
import 'package:mxplayer/Details/Details.dart';
import 'package:mxplayer/Details/series.dart';
import 'package:mxplayer/model/Moviees.dart';

class VHome extends StatefulWidget {
  @override
  _VHomeState createState() => _VHomeState();
}

class _VHomeState extends State<VHome> {

  List<serieslist> sl = [];
  List<Movies> m = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sl = serieList();
    m = movieslist();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height /100;
    width = width / 100;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 25*height,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: sl.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index)
                  {
                    return topmovies(
                        img: sl[index].img,
                    );
                  }
              ),
            ),
            SizedBox(height: height * 1,),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 3*height,
                width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Continue Watching",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    Text("SEE MORE",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: Colors.blue),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1 * height,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                height: 25 * height,
                width: 90 * width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: new DecorationImage(
                      image: AssetImage("assets/tvd.jpg"),
                    fit: BoxFit.fill
                  )
                ),
              ),
            ),
            SizedBox(height: 2 * height,),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                height: 3*height,
                width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("MX Orginal Web Shows",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    Text("SEE MORE",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: Colors.blue),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2 * height,),
            Container(
              height: 18 * height,
              width: double.infinity,
              child: ListView.builder(
                itemCount: m.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return topmovie(
                    img: m[index].img,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class topmovies extends StatelessWidget {

  final String? img;

  const topmovies({required this.img});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    height = height /100;
    width = width / 100;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 18*height,
        width: 80 * width,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
            image: new DecorationImage(
                image: new AssetImage(img!),
                fit: BoxFit.fill
            )
        ),
      ),
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
    height = height /100;
    width = width / 100;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 18*height,
        width: 50 * width,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
            image: new DecorationImage(
                image: new AssetImage(img!),
                fit: BoxFit.fill
            )
        ),
      ),
    );
  }
}
