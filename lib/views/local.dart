import 'package:flutter/material.dart';
import 'package:mxplayer/Details/Details.dart';
import 'package:mxplayer/model/Moviees.dart';

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  List<Movies> m = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
          children: [
            Container(
              height: 5 * height,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: width*2,),
                    Text("Recent Videos  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                    Text(" | ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                    Text(" Popular Flims  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                    Text(" | ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                    Text(" Best Songs  ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                    Text(" | ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                    Text(" Best Movies ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                    Text(" | ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                    Text(" Super Songs",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,letterSpacing: 1),),
                  ],
                ),
              ),
            ),
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
            Container(
              height: height * 500,
              width: double.infinity,
              child: Column(
                children: [
                  tiles("Camera","5 Videos"),
                  Divider(height: 2,),
                  tiles("Canva","3 Videos"),
                  Divider(height: 2,),
                  tiles("Movies","2 Videos"),
                  Divider(height: 2,),
                  tiles("Love","1 Videos"),
                  Divider(height: 2,),
                  tiles("Meet","18 Videos"),
                  Divider(height: 2,),
                  tiles("Love","1 Videos"),
                  Divider(height: 2,),
                  tiles("Meet","18 Videos"),
                  tiles("Camera","5 Videos"),
                  Divider(height: 2,),
                  tiles("Canva","3 Videos"),
                  Divider(height: 2,),
                  tiles("Movies","2 Videos"),
                  Divider(height: 2,),
                  tiles("Love","1 Videos"),
                  Divider(height: 2,),
                  tiles("Meet","18 Videos"),
                  Divider(height: 2,),
                  tiles("Love","1 Videos"),
                  Divider(height: 2,),
                  tiles("Meet","18 Videos"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile tiles(String name,String videos) {
    return ListTile(
                  leading: Icon(Icons.folder,size: 65,color: Colors.blue.shade400,),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.grey,fontFamily: "fantasy"),),
                  ),
                  subtitle: Text(videos,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey)),
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
