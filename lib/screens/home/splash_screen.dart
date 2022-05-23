import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() =>
      SplashScreenState();
  }
  class SplashScreenState extends State<SplashScreen> {
    @override
    void initState() {
      super.initState();
      Timer(Duration(seconds: 5),
      ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
              (context) => HomeScreen()
            ),
          ),
        );
    }

    @override

    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child: IconButton(
                  onPressed: (){},
                  icon: SvgPicture.asset(
                    "assets/icons/splash_icon.svg",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Fashion and AR in the same ship!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      color: Colors.black
                  ),
                ),
              )
            ],
          )
        // child:FlutterLogo(size:MediaQuery.of(context).size.height)

       ),
      );
    }
  }
