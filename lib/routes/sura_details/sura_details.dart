import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi/model/sura_details_args.dart';

class SuraDetails extends StatefulWidget {
  static String routeName = "sura details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String suraContent="";

  @override
  Widget build(BuildContext context) {
  var args=ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
  if(suraContent.isEmpty)
    {
      ReadSuraContent(args.filename);
    };
  return Scaffold(
      appBar: AppBar(title: Text(args.suraname,)),
      body:suraContent.isEmpty ?Center(child: CircularProgressIndicator()):Text(
       suraContent
       ),
       );
  }

  ReadSuraContent(String filename) async {
  suraContent=await rootBundle.loadString("assets/quran_files/$filename");
  setState(() {});
  }
  }