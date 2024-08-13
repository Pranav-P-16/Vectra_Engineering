import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        },
        backgroundColor: Colors.red,
        child: Text("👋",style: TextStyle(fontSize: 30),),
      ),
        appBar: AppBar(
          toolbarHeight: 65,
          backgroundColor: Colors.red,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/logo2.png',height: 100,width: 100,),
              Text("Vectra Engineering",style: GoogleFonts.oswald(fontSize: 30,color: Colors.white),),
            ],
          ),
        ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
                top: mq.height*.025,
                right: mq.width*.0000001,
                child: Image.asset('assets/images/asset1.png',height: 150,)),
            Positioned(
                top: mq.height*.265,
                left: mq.width*.02,
                child: Image.asset('assets/images/asset2.png',height: 120,)),
            Positioned(
                top: mq.height*.480,
                right: mq.width*.01,
                child: Image.asset('assets/images/asset_side3.png',height: 140,)),
            Column(
            children: [

              Padding(
                padding: EdgeInsets.only(right:mq.width*.33,top: mq.height*0.005,bottom: mq.height*0.01),
                child: Card(
                  child: InkWell(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (_)=>TimeScheduler()));
                    },
                    child: Stack(
                      children: [Container(
                        height: mq.height*.2,
                        width: mq.width*.6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(mq.height*.02),
                          child: Image.asset('assets/images/menu1.jpeg',height: mq.height*.2,
                            width: mq.width*.8,),
                        ),
                      ),Text("\n\n\n\n"+"\t"*4+"Stock",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white),),],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:mq.width*.33,top: mq.height*0.005,bottom: mq.height*0.01),
                child: Card(
                  child: InkWell(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (_)=>TimeScheduler()));
                    },
                    child: Stack(
                      children: [Container(
                        height: mq.height*.2,
                        width: mq.width*.6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(mq.height*.02),
                          child: Image.asset('assets/images/menu2.jpeg',height: mq.height*.2,
                            width: mq.width*.5,),
                        ),
                      ),Text("\n\n\n\n"+"\t"*4+"Work",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white),),],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right:mq.width*.33,top: mq.height*0.005,bottom: mq.height*0.01),
                child: Card(
                  child: InkWell(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (_)=>TimeScheduler()));
                    },
                    child: Stack(
                      children: [Container(
                        height: mq.height*.2,
                        width: mq.width*.6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(mq.height*.02),
                          child: Image.asset('assets/images/menu3.jpeg',height: mq.height*.2,
                            width: mq.width*.5,),
                        ),
                      ),Text("\n\n\n\n"+"\t"*4+"Meetings",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white),),],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:mq.width*.33,top: mq.height*0.005,bottom: mq.height*0.01),
                child: Card(
                  child: InkWell(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (_)=>TimeScheduler()));
                    },
                    child: Stack(
                      children: [Container(
                        height: mq.height*.2,
                        width: mq.width*.6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(mq.height*.02),
                          child: Image.asset('assets/images/asset4.jpeg',height: mq.height*.2,
                            width: mq.width*.5,),
                        ),
                      ),Text("\n\n\n\n"+"\t"*4+"Maintenance works",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white),),],
                    ),
                  ),
                ),
              ),
              SizedBox(height: mq.height*0.03,),
              Container(
                width: mq.width,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [Text("🚧   Other Services   🚧",style: GoogleFonts.oswald(fontSize: 30,color: Colors.white),),
                    SizedBox(height: mq.height*0.01,),
                    Container(
                      height: mq.height*.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [

                          Card(
                            child: InkWell(
                              onTap: (){
                                //Navigator.push(context, MaterialPageRoute(builder: (_)=>FurnitureDesc()));
                              },
                              child: Stack(
                                children: [Container(
                                  color: Colors.red,
                                  height: mq.height*.24,
                                  width: mq.width*.55,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(mq.height*.02),
                                    child: Image.asset('assets/images/asset5.jpeg',height: mq.height*.2,
                                      width: mq.width*.5,),
                                  ),
                                ),Text("\n\n\n\n"+"\t"*2+"Work Register",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white),)],
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              onTap: (){
                                //Dialogues.showToast(context, "Under Dev...");
                              },
                              child: Stack(
                                children: [Container(
                                  color: Colors.red,
                                  height: mq.height*.24,
                                  width: mq.width*.68,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(mq.height*.02),
                                    child: Image.asset('assets/images/asset6.jpg',height: mq.height*.2,
                                      width: mq.width*.8,),
                                  ),
                                ),Text("\n\n\n\n"+"\t"*2+"KSEB",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white),)],
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              onTap: (){
                                //Dialogues.showToast(context, "Under Dev...");
                              },
                              child: Stack(
                                children: [Container(
                                  color: Colors.red,
                                  height: mq.height*.2,
                                  width: mq.width*.6,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(mq.height*.02),
                                    child: Image.asset('assets/images/asset8.jpeg',height: mq.height*.2,
                                      width: mq.width*.5,),
                                  ),
                                ),Text("\n\n\n\n"+"\t"*3+"Notes",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white),)],
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              onTap: (){
                                //Dialogues.showToast(context, "Under Dev...");
                              },
                              child: Stack(
                                children: [Container(
                                  color: Colors.red,
                                  height: mq.height*.2,
                                  width: mq.width*.6,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(mq.height*.02),
                                    child: Image.asset('assets/images/asset7.jpeg',height: mq.height*.2,
                                      width: mq.width*.5,),
                                  ),
                                ),Text("\n\n\n\n"+"\t"*4+"Upcoming...",style: GoogleFonts.oswald(fontSize: 20,color: Colors.white),)],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),],
                ),
              ),


            ],
          )],
        ),
                  ),
      ),
    );
  }
}
