import 'package:flutter/material.dart';
import 'package:isalmi/routes/ahadeth_details/ahadeth_details.dart';
import 'package:isalmi/routes/home/home.dart';
import 'package:isalmi/routes/home/splash_screen/splash_screen.dart';
import 'package:isalmi/routes/sura_details/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routename:(_)=>SplashScreen(),
        Home.routename:(_)=>Home(),
        SuraDetails.routeName:(_)=>SuraDetails(),
        AhadethDetails.routeName:(_)=>AhadethDetails(),
      },
      initialRoute: SplashScreen.routename,


    );
  }
}
