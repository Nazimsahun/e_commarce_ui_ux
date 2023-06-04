import 'package:flutter/material.dart';
import 'package:last_e_commarce_project/Animation.dart';
import 'package:last_e_commarce_project/pages/CatagoryPage.dart';
import 'package:last_e_commarce_project/pages/ShopPage.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeAnimation(1, Container(

              height: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/img4.jpeg'),
                    fit: BoxFit.fitHeight,
                  )
              ),
              child: FadeAnimation(1.5, Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.2),
                        ]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FadeAnimation(1, IconButton(
                            icon: Icon(Icons.favorite, color: Colors.white,),
                            onPressed: () {},
                          )),
                          FadeAnimation(1.2, IconButton(
                            icon: Icon(
                              Icons.shopping_cart, color: Colors.white,),
                            onPressed: () {},
                          )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            FadeAnimation(1.5, Text("Our New Products",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),)),
                            SizedBox(height: 15,),
                            FadeAnimation(1.8, Row(
                              children: <Widget>[
                                Text("VIEW MORE",
                                  style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.w600),),
                                SizedBox(width: 5,),
                                Icon(
                                  Icons.arrow_forward_ios, color: Colors.white,
                                  size: 15,),
                              ],
                            )),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
            )),
            FadeAnimation(1.9, Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("catagories", style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                      Text("All",)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategory(images: 'assets/images/shop1.jpeg',
                            title: 'INDOOR Products',tag: 'Indoor'),
                        makeCategory(images: 'assets/images/outdoor.jpeg',
                            title: 'OUTDOOR Products',tag: 'OUTDOOR'),
                        makeCategory(images: 'assets/images/industry.jpeg',
                            title: 'INDUSTRY Products',tag: 'INDUSTRY'),
                        makeCategory(images: 'assets/images/smartligting.jpeg',
                            title: 'SMART LIGHTING Products',tag: 'SMART LIGHTING '),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Our collections", style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                      Text("All",)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        MakeOurcollections(images: 'assets/images/cob.webp',
                            title: 'COB lights Indoor',),
                        MakeOurcollections(
                            images: 'assets/images/cleanroom.webp',
                            title: 'Clean lights industrial'),
                        MakeOurcollections(
                            images: 'assets/images/downlight.webp',
                            title: 'Down Lights Indoor'),
                        MakeOurcollections(images: 'assets/images/facade.webp',
                            title: 'facade Indoor'),
                        MakeOurcollections(images: 'assets/images/bollard.webp',
                            title: 'bollard Lights'),
                        MakeOurcollections(
                            images: 'assets/images/flameproof.webp',
                            title: 'Flame proof well glass'),
                      ],
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

    Widget makeCategory({images,title,tag}){
      return AspectRatio(aspectRatio: 2/2,
        child:Hero(
          tag: tag,
          child: GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryPage(images:images,tag:tag,title:title)));
               },
            child: Material(
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(images),
                      fit: BoxFit.fitHeight,
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors:[
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.0),
                            ]
                        )
                    ),
                    child:
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(title, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

    }
    Widget MakeOurcollections({images,title}) {
      return AspectRatio(aspectRatio: 3 / 2.2,
          child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(images),
                  fit: BoxFit.fitHeight,
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.0),
                        ]
                    )
                ),
                child:
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(title, style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),),
                ),
              ),
            ),
          )
      );
    }
  }

