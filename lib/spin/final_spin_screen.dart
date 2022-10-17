import 'package:epic_inviation/constant.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:google_fonts/google_fonts.dart';
class FinalSpinScreen extends StatefulWidget {
  @override
  _FinalSpinScreenState createState() => _FinalSpinScreenState();
}

class _FinalSpinScreenState extends State<FinalSpinScreen> {
  StreamController<int> selected = StreamController<int>();
  int StreamInt = 10;

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Position 1',
      'Position 2',
      'Position 3',
      'Position 4',
      'Position 5',
      'Position 6',
    ];
    num data = 3;
    dynamic data2 = 3;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bg.png'),fit: BoxFit.cover,opacity: 0.5)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   centerTitle: false,
        //   title: Text('Spin To Win',style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 24,
        //     fontFamily: "Montserrat",
        //     fontWeight: FontWeight.w700,
        //   ),),
        //   backgroundColor: Colors.black,
        //   elevation: 0,
        // ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(



                children: [
                  Row(
                    children: [
                      BackButton(color: mainColor,),
                      Text('Spin To Win',style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                      ),),
                      //backgroundColor: Colors.black,
                      //elevation: 0,
                    ],

                  ),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(220),


                    ),
                    child: Stack(
                      children: [



                        Container(
                          height: 320,
                            width: 320,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(300),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 130.0,
                                  spreadRadius: 40, //New
                                )
                              ],
                            ),




                            child:Container(
                             // height: 20,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(220),
                                color: Color.fromRGBO(158, 158, 158, 1),
                                boxShadow:  [ BoxShadow(
                                  color: Colors.black, //New
                                  blurRadius: 5.0,
                                )]



                              ),
                              child: SizedBox(
                                //height: MediaQuery.of(context).size.height * 0.5,
                               //width: 100,
                               // height: 100,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    radius: 200,
                                    backgroundColor: Color.fromRGBO(27, 17, 224, 1),
                                    backgroundImage: AssetImage('assets/wheelb.png'),
                                    child: CircleAvatar(
                                      //backgroundColor: Color.fromRGBO(27, 17, 224, 1),
                                      radius: 145,
                                      child: FortuneWheel(
                                        indicators: [],
                                        onAnimationStart: (){
                                          print('animation is started');
                                        },
                                        onAnimationEnd: (){
                                          print('animation ended');
                                        },
                                        duration: Duration(seconds: 5),
                                        styleStrategy: FortuneBar.kDefaultStyleStrategy,
                                        selected: selected.stream,
                                        items: [

                                          FortuneItem(
                                            style: FortuneItemStyle(
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                            ),
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/1.png',
                                                  fit: BoxFit.cover,
                                                )),

                                          ),
                                          FortuneItem(
                                              style: FortuneItemStyle(
                                                color: Color.fromRGBO(27, 17, 224, 1),
                                                borderColor: Color.fromRGBO(27, 17, 224, 1),
                                                borderWidth: 4,
                                              ),
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/3.png',
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/4.png',

                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/5.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/3.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/4.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/5.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/3.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/4.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/5.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/3.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/4.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/5.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/3.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            style: FortuneItemStyle(
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/4.png',
                                                  fit: BoxFit.cover,
                                                )),
                                          ),

                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/5.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),

                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/3.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/4.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),
                                          FortuneItem(
                                            child: RotatedBox(quarterTurns: 1,
                                                child: Image.asset('assets/5.png',
                                                  fit: BoxFit.cover,
                                                )),
                                            style: FortuneItemStyle(
                                              color: Color.fromRGBO(27, 17, 224, 1),
                                              borderColor: Color.fromRGBO(27, 17, 224, 1),
                                              borderWidth: 4,
                                            ),
                                          ),







                                          // FortuneItem(child: Text('position2'),style: FortuneItemStyle(
                                          //   color:StreamInt==1 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                          // )),
                                          // FortuneItem(child: Text('position3'),style: FortuneItemStyle(
                                          //     color:StreamInt==2 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                          // )),
                                          // FortuneItem(child: Text('position4'),style: FortuneItemStyle(
                                          //     color:StreamInt==3 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                          // )),
                                          // FortuneItem(child: Text('position5'),style: FortuneItemStyle(
                                          //   color:StreamInt==4 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                          // )),
                                          // FortuneItem(child: Text('position6'),style: FortuneItemStyle(
                                          //     color:StreamInt==5 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                          // )),
                                          // FortuneItem(child: Text('position7'),style: FortuneItemStyle(
                                          //   color:StreamInt==6 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                          // )),
                                          //
                                          // FortuneItem(child: Text('position6'),style: FortuneItemStyle(
                                          //   color:StreamInt==7 ? Colors.yellow : Color.fromRGBO(92, 91, 165, 1),
                                          // )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),

                        const Positioned(
                          top: 100,
                          bottom: 100,
                          right: 110,

                          child: Center(
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/circle.png'),
                              radius: 50,
                              child: Text('Spin!',style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(67, 67,68, 1),
                                fontWeight: FontWeight.bold,
                              ),),

                            ),
                          ),
                        ),




                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   for(int i=0; i<=6;i++){
                        //     StreamInt=i;
                        //     Future.delayed(Duration(seconds: 4));
                        //     print(StreamInt);
                        //   }
                        // });
                        //Future.delayed(Duration(seconds: 2));

                        setState(() {
                          StreamInt = Fortune.randomInt(0, 4);
                          //StreamInt=3;
                          selected.add(
                            StreamInt,
                          );
                          print(StreamInt);
                        });
                        //print(object)
                      },
                    child: SizedBox(child: Buttonls1(data: "SPIN!",),
                    width: 200,
                    ),


                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SpinButton(data: '5',data2: 'Earned'),
                      SpinButton(data: '1',data2: 'Remaining'),

                    ],
                  ),

                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Latest winners",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),

                 Container(
                   height: 120,
                   child: ListView(
                     children: [
                       ListTile(leading: CircleAvatar(
                         backgroundImage: AssetImage('assets/profile.jpg'),
                       ),
                         title: Text(
                           "James C just won 100 Selfles Tokens",
                           style: TextStyle(
                             color: Color(0xfff5f5f5),
                             fontSize: 16,
                             fontFamily: "Montserrat",
                             fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),


                       ListTile(leading: CircleAvatar(
                         backgroundImage: AssetImage('assets/profile.jpg'),
                       ),
                         title: Text(
                           "Tiffany K. just won \$1,000",
                           style: TextStyle(
                             color: Color(0xfff5f5f5),
                             fontSize: 16,
                             fontFamily: "Montserrat",
                             fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),

                       ListTile(leading: CircleAvatar(
                         backgroundImage: AssetImage('assets/profile.jpg'),
                       ),
                         title: Text(
                           "JohnCena just won 5 spins",
                           style: TextStyle(
                             color: Color(0xfff5f5f5),
                             fontSize: 16,
                             fontFamily: "Montserrat",
                             fontWeight: FontWeight.w700,
                           ),
                         ),
                       ),
                     ],
                   ),
                 )


                ],
              ),
              Positioned(

                left: 180,
                top: 50,

                child: Image.asset('assets/indicator.png'),height: 50,width: 30,),
            ],
          ),
        ),
      ),
    );
  }
}

