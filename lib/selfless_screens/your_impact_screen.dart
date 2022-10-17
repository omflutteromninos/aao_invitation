import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';

class MyImpactScreen extends StatelessWidget {
  const MyImpactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: mainColor, // <-- SEE HERE
        ),
        title: const Text('Your Impact', style:TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w700,
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey)),
              ),
            ),
            //SizedBox(height: 10,),
            ListTile(
              leading: Container(
                width: 220,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Corporate impact      ', style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: appblack,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900,
                      )
                  ),),
                ),
              ),
              trailing: Text('124k', style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Color(0xffe63d43),
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
              leading: Container(
                width: 220,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Personal impact      ', style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: appblack,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900,
                      )
                  ),),
                ),
              ),
              trailing: Text('1k', style: GoogleFonts.montserrat(
                textStyle: TextStyle(  color: Color(0xfff09a37),
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
              leading: Container(
                width: 220,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Team impact          ', style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: appblack,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900,
                      )
                  ),),
                ),
              ),
              trailing: Text('250', style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Color(0xfffaed23),
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
            SizedBox(height:40,),
            Center(
              child: Image.asset('assets/heart.png'),
            )

          ],
        ),
      ),
    );
  }
}
