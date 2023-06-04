import 'package:flutter/material.dart';
import 'package:last_e_commarce_project/Animation.dart';
import 'package:last_e_commarce_project/shop.dart';
import 'package:page_transition/page_transition.dart';

void main()=> runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Shop()
  )
);
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _sacaleController;
  late Animation<double> _scaleAnimation;
  bool hide = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _sacaleController =AnimationController(vsync: this,
    duration: Duration(milliseconds: 800));
    _scaleAnimation = Tween<double>(begin: 1.0,end: 30.0).animate(_sacaleController)..addStatusListener((status) {
      if (status == AnimationStatus.completed){
        Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: Shop() ));

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
             image: AssetImage('assets/images/img3.jpeg'),
            fit: BoxFit.fitHeight,
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
                colors:[
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.4),

                ]
                )
              ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeAnimation(1.5,Text("The Future Of Lighting Technology",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),)),
                SizedBox(height:20,),
                FadeAnimation(1.8,Text("lightning up the past with a spark of the light",style: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.bold),)),
                SizedBox(height:20,),
                InkWell(
                  onTap: (){
                    setState(() {
                      hide = true;
                    });
                    _sacaleController.forward();

                  },
                  child: AnimatedBuilder(
                    animation: _sacaleController,
                    builder: (context,child)=>Transform.scale(
                      scale: _scaleAnimation.value,
                      child: FadeAnimation(2,Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child:hide == false? Text("Get Started",style: TextStyle(fontWeight: FontWeight.bold ),): Container(),
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                FadeAnimation(2.4,Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text("Creat Account",style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),),
                  ),
                )),
                SizedBox(height: 30,),
              ],
            ),
          ),
            ),
          ),
        );


  }
}
