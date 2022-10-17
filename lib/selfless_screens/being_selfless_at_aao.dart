import 'package:epic_inviation/selfless_screens/your_impact_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';


class BeingSelflessMainScreen extends StatelessWidget {
  const BeingSelflessMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor, // <-- SEE HERE
        ),
        title: const Text('Being Selfles at AAO', style:TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w700,
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.95,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: lightModegrey,width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: SelflessIconBackground,
                      child: Image.asset('assets/d.png',height: 30,width: 30,),
                    ),
                    title: Text(
                      "My Token Level",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xff434344),
                          fontSize: 16,
                        ),
                      )
                    ),
                    subtitle: Text(
                      "Hero 5K",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xff434344),
                          fontSize: 24,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ),


                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: lightModegrey,width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: SelflessIconBackground,
                      child: Image.asset('assets/p.png',height: 30,width: 30,),
                    ),
                    title: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                          "Safe Places Near Me",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xff434344),
                              fontSize: 24,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          )
                      ),
                    ),



                  ),
                ),
              ),
              //SizedBox(height: 30,),
              SizedBox(height: 30,),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: lightModegrey,width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: SelflessIconBackground,
                      child: Image.asset('assets/g.png',height: 30,width: 30,),
                    ),
                    title: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                          "Rewards Near Me   ",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xff434344),
                              fontSize: 24,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          )
                      ),
                    ),



                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: lightModegrey,width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: SelflessIconBackground,
                      child: Image.asset('assets/gi.png',height: 30,width: 30,),
                    ),
                    title: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                          "Give to Earn          ",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xff434344),
                              fontSize: 24,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          )
                      ),
                    ),



                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: lightModegrey,width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyImpactScreen()));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: SelflessIconBackground,
                      child: Image.asset('assets/i.png',height: 30,width: 30,),
                    ),
                    title: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                          "Your Impact         ",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xff434344),
                              fontSize: 24,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          )
                      ),
                    ),



                  ),
                ),
              ),
              SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );
  }
}
