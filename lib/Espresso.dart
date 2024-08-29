import 'package:coffeeapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class espresso extends StatefulWidget{
  @override
  State<espresso> createState() => _espressoState();
}

class _espressoState extends State<espresso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
                      child: Image.asset('assets/images/Espresso.jpeg',
                        height: 500,width: 400,fit: BoxFit.fill,)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40,left: 20),
                              child:   Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(11)),
                                child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey,),

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40,right: 20),
                            child:   Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(11)),
                                child: Center(child: FaIcon(FontAwesomeIcons.solidHeart,color: Colors.amber,size: 20,))

                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 270,),
                      Container(
                        height: 150,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.only(
                                bottomLeft:Radius.circular(21),
                                bottomRight: Radius.circular(21),
                              topRight: Radius.circular(60),
                           topLeft: Radius.circular(60),
                            )
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text('Espresso',style: TextStyle(color: Colors.white,
                                    fontSize: 22,fontWeight: FontWeight.w500),),
                                    Text('     with Chocolate',style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 18,fontWeight: FontWeight.w500),)
                                  ],
                                ),
                                SizedBox(width: 15,),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: Colors.black,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.coffee,color: Colors.amber,),
                                      Text('Coffee',style: TextStyle(
                                          color: Colors.grey,fontSize: 16),)
                                    ],
                                  ),),
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: Colors.black,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                          child: FaIcon(FontAwesomeIcons.droplet,color: Colors.amber,)),
                                      Text('Milk',style: TextStyle(
                                          color: Colors.grey,fontSize: 16),)
                                    ],
                                  )),
                              SizedBox(width: 6,)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(width: 20,),
                                Icon(Icons.star,color: Colors.amber,),
                                Text('4.5',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22
                                ),),
                                Text('(3,343)',style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 22
                                ),),
                                SizedBox(width: 10,),
                                Container(
                                  height: 40,
                                width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: Colors.black
                                  ),
                                  child: Center(
                                    child: Text('Small Roasted',style: TextStyle(
                                      color: Colors.grey
                                    ),),
                                  ),
                                ),
                                SizedBox(width: 16,)


                              ],
                            )
                          ],
                        ) ,

                      ),
                    ],
                  )


                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Text('Description',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22
                ),),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Text('A cappuccino is the perfect balance of espresso\nsteamed milk. This coffee is all about the structure',style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                ),),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Text('Size',style: TextStyle(
                    color: Colors.grey,
                    fontSize: 22
                ),),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color:  Color(0xFF212121),

                  ),
                  child: TextField(
                     keyboardType: TextInputType.none,
                textAlign:TextAlign.center,
                    showCursor: false,

                    decoration: InputDecoration(
                      hintText: 'S',
                      hintStyle: TextStyle(
                          color: Colors.white,fontSize: 22),
                       border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                          width: 2
                        ),
                          borderRadius: BorderRadius.circular(11)
                      )
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color:  Color(0xFF212121),

                  ),
                  child: TextField(
                    keyboardType: TextInputType.none,
                    textAlign:TextAlign.center,
                    showCursor: false,

                    decoration: InputDecoration(
                        hintText: 'M',
                        hintStyle: TextStyle(
                            color: Colors.white,fontSize: 22),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.amber,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(11)
                        )
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color:  Color(0xFF212121),

                  ),
                  child: TextField(
                    keyboardType: TextInputType.none,
                    textAlign:TextAlign.center,
                    showCursor: false,

                    decoration: InputDecoration(
                        hintText: 'L',
                        hintStyle: TextStyle(
                            color: Colors.white,fontSize: 22),
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.amber,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(11)
                        )
                    ),
                  ),
                ),
              ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Price',style: TextStyle(color: Colors.grey,fontSize: 20),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('\$',style: TextStyle(color: Colors.amber,fontSize: 16),),
                      SizedBox(width: 10,),
                       Text('5.10',style: TextStyle(
                         color: Colors.white,fontSize:20
                       ),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                    borderRadius: BorderRadius.circular(18)
                  ),

                  child: Center(child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),)),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}