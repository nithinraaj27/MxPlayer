import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mxplayer/Details/Details.dart';
import 'package:mxplayer/model/games.dart';

class game extends StatefulWidget {
  @override
  _gameState createState() => _gameState();
}

class _gameState extends State<game> {
  List<games> gl =[];
  List<games> gll =[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gl = getGames();
    gll = getGames2();
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
            tile1(height, width),
            SizedBox(height: height * 2,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text("Games For You",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1),),
            ),
            SizedBox(height: height * 1,),
            tile2(height),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text("Play Games",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,fontFamily: "fantasy"),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 4*height,
                    width: 25*width,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("FREE",style: TextStyle(color: Colors.white,fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.w500),),
                  ),
                )
              ],
            ),
            tile1(height,width),
            SizedBox(height: height * 1,),
            tile2(height),
          ],
        ),
      )
    );
  }

  Container tile2(double height) {
    return Container(
            height: height * 22,
            width: double.infinity,
            child: ListView.builder(
              itemCount: gll.length,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return topmovie(
                  img: gll[index].img,
                );
              },
            ),
          );
  }

  Container tile1(double height, double width) {
    return Container(
          //color: Colors.red,
          width: double.infinity,
          height: height * 29 ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
                child: Container(
                  height: height * 22,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: gl.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return topmovie(
                        img: gl[index].img,
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("Win 💲4000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,fontFamily: "fantasy"),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 4*height,
                      width: 25*width,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("FREE",style: TextStyle(color: Colors.white,fontSize: 17,letterSpacing: 2,fontWeight: FontWeight.w500),),
                    ),
                  )
                ],
              )
            ],
          )
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
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 20,
        color: Colors.red,
        child: Column(
          children: [
            Container(
              height: 20*height,
              width: 75 * width,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  image: new DecorationImage(
                      image: new AssetImage(img!),
                      fit: BoxFit.fill
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

