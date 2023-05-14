



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../utlis/app_colors.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
            child: Image.asset("assets/bg_hates.png")),
        Divider(height: 5,thickness: 4,color: Appcolours.primarycolor),
       SizedBox(height: 7,),
       Text("الحديث",style: TextStyle(fontWeight:
       FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,),
        SizedBox(height: 7,),
        Divider(height: 5,thickness: 4,color: Appcolours.primarycolor),
       Expanded(
           flex: 7,
           child: AppBar(title: Text("s")),)

      ],
    );



  }
  readahadethfiles ()async{
    String hadethfile= await rootBundle.loadString("assets/ahadeth .txt");
    List<String> hadeth=hadethfile.split("#");

  }
}