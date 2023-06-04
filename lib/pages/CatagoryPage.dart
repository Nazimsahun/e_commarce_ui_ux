import 'package:flutter/material.dart';
import 'package:last_e_commarce_project/Animation.dart';

class CategoryPage extends StatefulWidget {
  final String images;
  final String title;
  final String tag;

  const CategoryPage({super.key, required this.images, required this.title, required this.tag});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
           Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 300,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(widget.images),
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
                                Colors.black.withOpacity(.1),
                              ]
                          )
                      ),
                      child:
                      Column(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Column(
                            children: <Widget>[
                              SizedBox(height: 40),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  FadeAnimation(1, IconButton(
                                    icon: Icon(Icons.search, color: Colors.white,),
                                    onPressed: () {},
                                  )),
                                  FadeAnimation(1.2, IconButton(
                                    icon: Icon(Icons.favorite, color: Colors.white,),
                                    onPressed: () {},
                                  )),
                                  FadeAnimation(1.4, IconButton(
                                    icon: Icon(
                                      Icons.shopping_cart, color: Colors.white,),
                                    onPressed: () {},
                                  )),
                                ],
                              ),
                            ],
                          ),


                           Text(widget.title, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
