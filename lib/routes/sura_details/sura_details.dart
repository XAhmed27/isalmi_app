import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi/model/sura_details_args.dart';

import '../../utlis/app_colors.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = "sura details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines=[];

  @override
  Widget build(BuildContext context) {
  var args=ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
  if(suraLines.isEmpty)
    {
      ReadSuraContent(args.filename);
    };
  return Container(
    decoration: const BoxDecoration(image:DecorationImage(
        image: AssetImage("assets/bg_home.png"),fit: BoxFit.fill),),
    child: Scaffold(
      backgroundColor: Colors.transparent,
        appBar: AppBar(centerTitle: true,title: Text(args.suraname,
            textAlign:TextAlign.right,
            style:TextStyle(color: Appcolours.accentcolor,
            fontSize:30,fontWeight: FontWeight.bold )),
          elevation: 0,backgroundColor: Colors.transparent,),
        body:suraLines.isEmpty ?Center(child:
        CircularProgressIndicator()):ListView.separated
          (itemBuilder: (context, index) {
            return Text("(${index+1}) ${suraLines[index]} ",textAlign:TextAlign.right,
              style: TextStyle(fontSize:25,fontWeight: FontWeight.bold ),);

        },itemCount: suraLines.length,
          separatorBuilder: (context, index) {
            return Divider(height: 5,thickness: 4,color: Appcolours.primarycolor);
          }

        ),
         ),
  );
  }

  ReadSuraContent(String filename) async {
  var suraContent=await rootBundle.loadString("assets/quran_files/$filename");
  suraLines=suraContent.trim().split("\n");
  setState(() {});
  }
  }