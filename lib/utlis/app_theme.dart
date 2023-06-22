import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme{

  static ThemeData lightTheme=ThemeData(
    canvasColor: Appcolours.primarycolor,
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Appcolours.accentcolor,
          fontSize:30,fontWeight: FontWeight.bold ) ),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: Appcolours.accentcolor,
    textTheme: const TextTheme(
     bodySmall: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),
     titleSmall: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),//
      bodyMedium: TextStyle(fontSize: 27,
          fontWeight: FontWeight.bold)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        color: Appcolours.accentcolor,
        fontSize: 12
      ),
      selectedIconTheme: IconThemeData(
        size:  36
      ),
      selectedItemColor: Appcolours.accentcolor,
    )
      );
  static ThemeData darkTheme=ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Appcolours.white,
            fontSize:30,fontWeight: FontWeight.bold ) ),
    canvasColor: Appcolours.primarycolorDark,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: Appcolours.primarycolorDark,
    textTheme:  TextTheme(
        bodySmall: TextStyle(color: Appcolours.white,fontSize: 27,fontWeight: FontWeight.bold),
        titleSmall: TextStyle(color: Appcolours.primarycolorDark,fontSize: 14,fontWeight: FontWeight.bold),//
        bodyMedium: TextStyle(color: Appcolours.white,fontSize: 27,
            fontWeight: FontWeight.bold)// for light and english
    ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(
            color: Appcolours.accentcolorDark,
            fontSize: 12
        ),
        selectedIconTheme: IconThemeData(
            size:  36
        ),
        selectedItemColor: Appcolours.accentcolorDark,
      )


  );



}