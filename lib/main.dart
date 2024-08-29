import 'dart:ffi';

import 'package:coffeeapp/Double.dart';
import 'package:coffeeapp/Espresso.dart';
import 'package:coffeeapp/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splash(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var coffee = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xFF424242),
                          borderRadius: BorderRadius.circular(11)
                      ),
                      child: Image.asset('assets/images/fourd.png', scale: 5,)),
                  SizedBox(width: 100,),
                  Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11)
                      ),
                      child: Image.asset(
                        'assets/images/fluttericon.png', scale: 10,)),

                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Column(
                  children: [
                    Text(' Find the best', style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: 3,),
                    Text('Coffee for you', style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 27, right: 11),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xFF212121),
                      borderRadius: BorderRadius.circular(11)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          child: Icon(Icons.coffee, color: Colors.grey,
                            size: 20,),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 1,
                          child: TextField(
                            style: TextStyle(color: Colors.grey),
                            controller: coffee,
                            decoration: InputDecoration(
                                hintText: 'Find Your Coffee...',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      TextButton(onPressed: () {

                      }
                          , child: Text('Cappuccino', style: TextStyle(
                              fontSize: 18, color: Colors.amber
                          ),)
                      ),
                      TextButton(onPressed: () {

                      }
                          , child: Text('Espresso', style: TextStyle(
                              fontSize: 18, color: Colors.grey
                          ),)
                      ),
                      TextButton(onPressed: () {

                      }
                          , child: Text('Red Eye', style: TextStyle(
                              fontSize: 18, color: Colors.grey
                          ),)
                      ),
                      TextButton(onPressed: () {

                      }
                          , child: Text('Black Coffee', style: TextStyle(
                              fontSize: 18, color: Colors.grey
                          ),)
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Doubleecap(),));
                    },
                    child: Container(
                      height: 250,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFF212121),
                          borderRadius: BorderRadius.circular(21)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            child: Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(21),
                                    child: Image.asset(
                                      'assets/images/cappuccino.jpg',
                                      width: 140,
                                    )
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.7),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(11),
                                              topRight: Radius.circular(11))),
                                      width: 70,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .end,
                                        children: [
                                          Icon(
                                            Icons.star, color: Colors.amber,),
                                          SizedBox(width: 5,),
                                          Text('4.2', style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),),
                                          SizedBox(width: 5,)
                                        ],
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),

                          ),
                          Text(' Cappuccino', style: TextStyle(
                              color: Colors.white, fontSize: 22),),
                          Text('with Oat Milk', style: TextStyle(
                              color: Colors.grey, fontSize: 18),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 30,),
                              Text('\$', style: TextStyle(
                                  color: Colors.amber, fontSize: 20),),
                              SizedBox(width: 5,),
                              Text('4.20', style: TextStyle(
                                  color: Colors.white, fontSize: 20),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => espresso(),));
                    },
                    child: Container(
                      height: 250,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Color(0xFF212121),
                          borderRadius: BorderRadius.circular(21)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 140,
                            width: 140,
                            child: Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(21),
                                    child: Image.asset(
                                      'assets/images/Espresso.jpeg',
                                      width: 140,
                                    )
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.7),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(11),
                                              topRight: Radius.circular(11))),
                                      width: 70,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .end,
                                        children: [
                                          Icon(
                                            Icons.star, color: Colors.amber,),
                                          SizedBox(width: 5,),
                                          Text('4.5', style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),),
                                          SizedBox(width: 5,)
                                        ],
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),

                          ),
                          Text('Espresso', style: TextStyle(
                              color: Colors.white, fontSize: 22),),
                          Text('     with Chocolate', style: TextStyle(
                              color: Colors.grey, fontSize: 18),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 32,),
                              Text('\$', style: TextStyle(
                                  color: Colors.amber, fontSize: 20),),
                              SizedBox(width: 5,),
                              Text('5.10', style: TextStyle(
                                  color: Colors.white, fontSize: 20),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Special for you',
                  style: TextStyle(color: Colors.white, fontSize: 25),),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFF212121),
                    borderRadius: BorderRadius.circular(21),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(21)),
                            child: Image.asset('assets/images/coffee.jpeg')),
                      ),
                      SizedBox(width: 7,),
                      Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('5 Coffee Beans You', style: TextStyle(
                                color: Colors.white, fontSize: 20
                            ),),
                            SizedBox(height: 8,),
                            Text('Must try!', style: TextStyle(
                                color: Colors.white, fontSize: 20
                            ),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
