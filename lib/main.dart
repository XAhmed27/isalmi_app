import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:isalmi/provider/settingprovider.dart';
import 'package:isalmi/routes/ahadeth_details/ahadeth_details.dart';
import 'package:isalmi/routes/home/home.dart';
import 'package:isalmi/routes/home/splash_screen/splash_screen.dart';
import 'package:isalmi/routes/sura_details/sura_details.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( ChangeNotifierProvider(
    create: (_)=>SettingProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingProvider provider=Provider.of(context);
    return MaterialApp(

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(provider.currentlocale),
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
