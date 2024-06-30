
// import 'package:class13/login.dart';
import 'package:project/SignUp.dart';
import 'package:project/home.dart';
import 'package:project/login.dart';
// import 'package:project/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen>  {

  @override
  void initState() {
    super.initState();

    Timer(
            const Duration(seconds: 7),
                () =>
            Navigator.of(context).pushReplacement
            (MaterialPageRoute(
                builder: (BuildContext context) => LoginPage(),
                )
                )
    );

  }
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center( child: Image.asset("assets/0000.png", width: 320 ), ) ,
              const SizedBox(height: 5) ,
            Column(
         mainAxisAlignment: MainAxisAlignment.center ,
         crossAxisAlignment: CrossAxisAlignment.center ,
              children: [
                 const SizedBox(height: 30,) ,
          LoadingAnimationWidget.flickr(
          leftDotColor: const Color.fromARGB(255, 7, 139, 255),
          rightDotColor: const Color.fromARGB(192, 0, 255, 136) ,
          size: 60,
          ),
          Text("Loading", style: GoogleFonts.diphylleia(
            color: Color.fromARGB(255, 0, 0, 0) ,
            fontSize: 60)
          ) ,
              ]
        ),
              ]
      ),
        )
    );
  }
}
