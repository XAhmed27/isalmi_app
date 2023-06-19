


import 'package:flutter/material.dart';
import 'package:isalmi/model/hadeth.dart';
import 'package:isalmi/utlis/app_colors.dart';

class AhadethDetails  extends StatelessWidget {
  static String routeName="Ahadeth details";
  @override
  Widget build (BuildContext context) {
    var hadeth=ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
        decoration: const BoxDecoration(image:DecorationImage(
        image: AssetImage("assets/bg_home.png"),fit: BoxFit.fill),),
            child: Scaffold(
              appBar: AppBar(centerTitle: true,title: Text(hadeth.title,
                textAlign:TextAlign.right,
                style:TextStyle(color: Appcolours.accentcolor,
                    fontSize:30,fontWeight: FontWeight.bold )),
              elevation: 0,backgroundColor: Colors.transparent),
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Text(hadeth.content,textAlign:TextAlign.right,
                      style:TextStyle(color: Appcolours.accentcolor,
                          fontSize:30,fontWeight: FontWeight.bold )),
                ),
              ),
    ),
    );



  }
}