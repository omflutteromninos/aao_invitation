import 'dart:async';

import 'package:epic_inviation/widgets/indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../Authentication/login_screen.dart';


class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer(){
    Timer(const Duration(seconds: 5  ), () async{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (c)=> const LogInScreen()));
    });
  }

  @override
  void initState(){
    super.initState();    startTimer();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/splash_background.png'),fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset('assets/logo.png',height: 200,width: 300,),
                    Image.asset('assets/logotext.png',height: 100,width: MediaQuery.of(context).size.width* 0.9,),
                  ],
                ),



                // const Text('Priam For Drivers', style: TextStyle(
                //   fontSize: 20,
                //   fontWeight: FontWeight.bold,
                //   color: Colors.white,
                // ),)
                // const CircularProgressIndicator(
                //   strokeWidth: 4.0,
                // ),
                const SpinKitCircle(
                  color: Colors.black,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
