

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    /// image slider değişkeni burda farklilik olsun :)
    Widget image_carousel = Container(
        height: 210.0,
        width: 700,
        child: CarouselSlider(
          items: [
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/1.png?raw=true',
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/2.png?raw=true',
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/3.png?raw=true',
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/4.png?raw=true',
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/5.png?raw=true',
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/6.png?raw=true',

          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: GestureDetector(
                        child: SizedBox(child: Image.network(i, fit: BoxFit.fill)),
                        onTap: () {

                        }));
              },
            );
          }).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),


        ));


    /// keşfet slider image
    Widget slide_img = Container(



        width: width,
        child: CarouselSlider(
          items: [
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/g1.png?raw=true',
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/g2.png?raw=true',
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/g3.png?raw=true',
            'https://github.com/mahmut-salih-cicek/getirClone/blob/main/api/g4.png?raw=true',


          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: GestureDetector(
                        child: SizedBox(
                            child:Container(

                              child: Column(
                                children: [
                                  
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                      child: Image.network(i)
                                  ),
                                  
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 85, 0),
                                      child: Text("Komagene Etsiz Çiğ Köfte, Keşan(Yeni Mah.)",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),))
                                  
                                ],
                              ),
                            ),

                        ),
                        onTap: () {

                        }));
              },
            );
          }).toList(),
          options: CarouselOptions(
              viewportFraction : 0.9,
              enableInfiniteScroll: false,

          ),


        ));





    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 93, 62, 188),
        centerTitle: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Text("getir",style: TextStyle(color: Colors.amberAccent,fontSize: 23),),
            Text("yemek",style: TextStyle(fontSize: 23),),
        ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// adres, zaman ve Konum bilgileri
            Container(
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.08),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Stack(
                  children: [
                    /// Adress girme bari
                    SizedBox(
                      width: width,
                      height: height * 0.08,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, width * 0.2, 0),
                        child: Container(
                            child: Row(
                              children: [
                                // Home İcon
                                Padding(
                                    padding: EdgeInsets.fromLTRB(width * 0.03, 0, 0, 0),
                                    child:  Image.asset("img/homeico.png",width: 35,)
                                ),
                                // Adress Text
                                Padding(
                                  padding: EdgeInsets.fromLTRB(width * 0.05 , 3, 0, 0),
                                  child: Row(
                                    children: [

                                      Text("Adres",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.fromLTRB(width * 0.03, 0, 0, 0),
                                        child: Text("Büyük Cami, Atilgan...",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.grey),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.fromLTRB(width * 0.03, 0, 0, 0),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color.fromARGB(255, 93, 62, 188),
                                          size: 18,
                                        ),
                                      )


                                    ],),
                                ),


                              ],
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                              ),

                            )
                        ),
                      ),
                    ),
                    /// süre text
                    Padding(
                        padding: EdgeInsets.fromLTRB(width * 0.83, height * 0.02, 0, 0),
                        child:Column(
                          children: [
                            Text("TVS",style: TextStyle(color: Color.fromARGB(255, 93, 62, 188),fontWeight: FontWeight.w500),),
                            Text("15-25 dk",style: TextStyle(color: Color.fromARGB(255, 93, 62, 188),fontWeight: FontWeight.w500),),
                          ],
                        ))
                  ],
                ),
                ],

              )
              ),

            ///image slider
            image_carousel,

            ///menu1 Ne yesem, müdavim,siparişler, Favoriler
            Container(
                margin: EdgeInsets.fromLTRB(10, 13, 0, 0),

                child: Row(
                  children: [
                    
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Expanded(
                        child: SizedBox(
                          width: 95,
                          height: 65,
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("img/y1.png",width: 75,),
                                Text("Ne Yesem?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.08),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],


                            ),
                          ),
                        ),
                        flex:1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Expanded(
                        child: SizedBox(
                          width: 95,
                          height: 65,
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                    child: Image.asset("img/y2.png",width: 75,)),
                                Text("Müdavim",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.08),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],


                            ),
                          ),
                        ),
                        flex:1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Expanded(
                        child: SizedBox(
                          width: 95,
                          height: 65,
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0 , 3, 0, 0),
                                    child: Image.asset("img/y3.png",width: 75,)),
                                Text("Siparişlerim",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.08),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],


                            ),
                          ),
                        ),
                        flex:1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Expanded(
                        child: SizedBox(
                          width: 95,
                          height: 65,
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                    child: Image.asset("img/y4.png",width: 75,)),
                                Text("Favorilerim",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.08),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],


                            ),
                          ),
                        ),
                        flex:1,
                      ),
                    ),

                    
                  ],
                )
            ),

            ///menu2 filitre sırala
            Container(
                margin: EdgeInsets.fromLTRB(0, height * 0.04, 0, 0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Expanded(
                        child: SizedBox(
                          width: width * 0.9,
                          height: height * 0.06,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                  Row(
                                  children: [
                                    Image.asset("img/m1.png"),
                                    Text("Filtrele",style: TextStyle(color: Color.fromARGB(255, 93, 62, 188),),)
                                  ],
                                ),

                                Divider(
                                  color: Colors.black,
                                  height: 5,
                                ),



                                Row(
                                    children: [
                                      Image.asset("img/m2.png"),
                                      Text("Sırala",style: TextStyle(color: Color.fromARGB(255, 93, 62, 188),),)
                                    ],
                                  ),







                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.08),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],


                            ),
                          ),
                        ),
                        flex:1,
                      ),
                    ),



                  ],
                )
            ),

            /// keşfet
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(width * 0.04, height * 0.03, 0, 0),
                    child: Text("Keşfet",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),)),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, height * 0.03, width *0.03, 0),
                    child: Text("Tümünü Gör(7)",style: TextStyle(color: Color.fromARGB(195, 93, 62, 188),fontWeight: FontWeight.w500),)),
              ],
            ),
            /// kesfet image slider
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(Radius.circular(0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 10,
                    blurRadius: 15,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],

              ),
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                child: slide_img,
              ),

            ),



      Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        child: PageView.builder(
          pageSnapping: false,
          physics: PageScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount:
          20,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              child: Text("hbajsd"),
            );
          }
        )
      ),







          ],

        ),
      ),
    );
  }
}
