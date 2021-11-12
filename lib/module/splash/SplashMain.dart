import 'dart:async';

import 'package:dicodingapp/module/home/HomeMain.dart';
import 'package:flutter/material.dart';

class SplashMain extends StatefulWidget {

  @override
  _SplashMainState createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain> {

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  void startSplashScreen() {
    Timer(Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomeMain())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("assets/images/logo_splash.png", height: 200, width: 200),
          Center(
              child: Text(
                "dicoding",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 5,
                    color: Color.fromRGBO(45, 62, 80, 1)

                ),
                textAlign: TextAlign.center,
              )
          )
        ],
      ),
    );
  }
}

