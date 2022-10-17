import 'dart:ffi';

import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/contacts/contact_detail_screen.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/show_alert_screen.dart';
import 'add_new_contact_screen.dart';


class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.jpg',),fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: mainColor, // <-- SEE HERE
          ),
          centerTitle: false,
          title: Text('My Contacts',style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,),
            child: Column(
              children: [
                ListTile(
                  onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:(context){
                    return AddNewContactScreen2();
                  } ));},
                  leading: Container(
                    height: 52,
                    width: 52,
                    margin: EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      radius: 52,
                      //backgroundImage: AssetImage('assets/profile.jpg'),
                      backgroundColor: iconBackground,
                      child: Icon(Icons.add, color: mainColor,),
                    ),
                  ),
                  //trailing: Icon(Icons.check_box, color: mainColor,),
                  //title: const Text('Jack', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  title: const Text('Add new contact', style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),),


                ),
                //SizedBox(height: 5,),
                ListTile(

                  onTap: (){
                    showDialog(context: context, builder: (context){
                      return showdialoguebox(content: 'Would you like to import contact list from your phone?',title: 'Import Contacts',
                        actions1: [Align(alignment: Alignment.center,child: InkWell(onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ContactsScreen()));
                        },child: ButtonInvite(data: 'import')))],
                      );
                    });
                  },
                  leading: Container(
                    height: 52,
                    width: 52,
                    margin: EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      radius: 52,
                      //backgroundImage: AssetImage('assets/profile.jpg'),
                      backgroundColor: iconBackground,
                      child: Icon(Icons.sync, color: mainColor,),
                    ),
                  ),
                  subtitle: Text(
                    "Import recently added contacts",
                    style: TextStyle(
                      color: appblack,
                      fontSize: 12,
                    ),
                  ),
                  //trailing: Icon(Icons.check_box, color: mainColor,),
                  //title: const Text('Jack', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  title: Text('Sync Contacts', style: TextStyle(
                    color: appblack,
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),),

                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black)),
                  ),
                ),
                Expanded(

                  child: ListView(
                    children: [

                      SizedBox(height: 20,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),
                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: ButtonInviteLogo(data: 'Invite!',),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: ButtonInviteLogo(data: 'Invite!',),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),
                      SizedBox(height: 15,),

                      SizedBox(

                        child: ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewContactScreen3()));
                          },
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.check_box, color: mainColor,),
                          ),
                          ),
                          leading: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/profile.jpg'),
                          ),
                          title: Text('Max William', style: GoogleFonts.montserrat(
                              textStyle: TextStyle(color: appblack, fontSize: 16,fontWeight: FontWeight.bold)
                          ),),
                        ),

                      ),






                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
