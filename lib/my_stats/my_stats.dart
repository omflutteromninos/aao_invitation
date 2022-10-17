import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStats extends StatefulWidget {
  const MyStats({Key? key}) : super(key: key);

  @override
  State<MyStats> createState() => _MyStatsState();
}

class _MyStatsState extends State<MyStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg'))
      ),
      child: Scaffold(

        appBar: AppBar(
          iconTheme: IconThemeData(
            color: mainColor, // <-- SEE HERE
          ),
          title: const Text('My Stats', style:TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(
              width: 30,
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [

                  statstabButton(data: 'Last 7 days',color: Color.fromRGBO(158, 158, 158, 0.4),textColor: mainColor,),
                  SizedBox(width: 20,),
                  statstabButton(data: 'This Month',color: mainColor,textColor: Colors.white,),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
              ),
              //SizedBox(height: 10,),
              ListTile(
                leading: Text('Personal Invitations', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: appblack,
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  )
                ),),
                trailing: Text('4', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  ),
                )),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey)),
                ),
              ),
              //SizedBox(height: 10,),
              ListTile(
                leading: Text('Personally Enrolled', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: appblack,
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  ),),),
                trailing: Text('75', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: appblack,
                    fontSize: 40,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  ),
                ),),
              ),
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),),

              ListTile(
                leading: Text('Team Invitations', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: appblack,
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  ),),),
                trailing: Text('250', style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: appblack,
                    fontSize: 40,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                  ),
                ),),
              ),


              const SizedBox(
                height: 30,
              ),

              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.49,
                  //width: 300,
                  child: ListView(
                    children: [


                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 16,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                      SizedBox(height: 10,),
                      ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.jpg'),
                            radius: 25,
                          ),
                          title: Text('Tony Stark', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: appblack,
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              )
                          )),
                          trailing: Text('8', style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: appblack,
                              fontSize: 40,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          )),
                    ],
                  ),
                ),
              )





            ],
          ),
        ),

      ),
    );
  }
}

