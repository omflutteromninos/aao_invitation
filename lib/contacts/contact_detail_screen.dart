import 'package:epic_inviation/constant.dart';
import 'package:epic_inviation/widgets/button.dart';
import 'package:epic_inviation/widgets/user_input.dart';
import 'package:flutter/material.dart';
class AddNewContactScreen3 extends StatefulWidget {
  const AddNewContactScreen3({Key? key}) : super(key: key);

  @override
  State<AddNewContactScreen3> createState() => _AddNewContactScreen3State();
}

class _AddNewContactScreen3State extends State<AddNewContactScreen3> {
  TextEditingController _firstName = TextEditingController(text: 'B.A. ');
  TextEditingController _lastName = TextEditingController(text: 'Baracus');
  TextEditingController _phone = TextEditingController(text: '(512) 123-4007');
  TextEditingController _email = TextEditingController();
  TextEditingController _notes = TextEditingController(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada fermentum, tincidunt nisi, sociis vitae lacus, aliquam a. Justo non sed hendrerit nisl. Consequat iaculis cras pellentesque.');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(

        iconTheme: IconThemeData(
          color: mainColor, // <-- SEE HERE
        ),
        centerTitle: false,
        title: Text('Contact Details',style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w700,
        ),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Center(
                    //   child: Stack(
                    //     children: [
                    //       const CircleAvatar(
                    //         radius: 64,
                    //         backgroundImage: NetworkImage('https://i.stack.imgur.com/l60Hf.png'),
                    //       ),
                    //       Positioned(
                    //           left: 80,
                    //           bottom: -10,
                    //           child:  IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo, color: Colors.green,))),
                    //     ],
                    //   ),
                    // ),

                    Container(
                      height: MediaQuery.of(context).size.height * 0.79,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Center(
                              child: Stack(
                                children: [
                                  const CircleAvatar(
                                    radius: 64,
                                    backgroundImage: AssetImage('assets/profile.jpg'),
                                  ),
                                  Positioned(
                                      left: 95,
                                      bottom: 0,
                                      child:  Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(

                                            color: mainColor2,
                                            borderRadius: BorderRadius.circular(5),
                                          ),child: Center(child: IconButton(onPressed: (){}, icon: const Icon(Icons.edit, color: Colors.black,size: 16,))))),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            UserInput2(textEditingControllerl: _firstName, textInputType: TextInputType.emailAddress, hintText: 'First Name',),
                            const SizedBox(height: 20,),
                            UserInput2(textEditingControllerl: _lastName, textInputType: TextInputType.text, hintText: 'Last Name',),
                           // const SizedBox(height: 20,),
                           // UserInput2(textEditingControllerl: _email, textInputType: TextInputType.emailAddress, hintText: 'Email',),
                            const SizedBox(height: 20,),

                            UserInput2(textEditingControllerl: _phone, textInputType: TextInputType.numberWithOptions(signed: true, decimal: true), hintText: 'Phone',),
                            const SizedBox(height: 20,),
                            UserInputMultiline(textEditingControllerl: _notes, textInputType: TextInputType.text, hintText: 'Notes',),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15,bottom: 30),
                                child: Text(

                                  "150 characters max",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),

                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  children: [
                                    Text(
                                      "Invite Date:",
                                      style: TextStyle(
                                        color: Color(0xff434344),
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "08/02/2022",
                                      style: TextStyle(
                                        color: Color(0xff434344),
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )

                                  ],

                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Invite Status:",
                                      style: TextStyle(
                                        color: Color(0xff434344),
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "Accepted",
                                      style: TextStyle(
                                        color: Color(0xff434344),
                                        fontSize: 16,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )

                                  ],

                                ),

                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Buttonl(data: 'Cancel',color: Colors.white, TextColor: Colors.black,),
                                Buttonl(data: 'Save', color: mainColor2, TextColor: Colors.white,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    //Flexible(child: Container(), flex: 2,),

                  ],
                ),
                //Flexible(child: Container(),),

              ],
            ),
          ))),

    );
  }
}
