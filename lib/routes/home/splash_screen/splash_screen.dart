


import 'package:flutter/material.dart';
import 'package:isalmi/routes/home/home.dart';

class SplashScreen extends StatelessWidget {
  static String routename="Splashscreen";
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context,Home.routename);
    });

    return Image.asset("assets/splash.png",
      fit: BoxFit.fill,
    );

  }
}
