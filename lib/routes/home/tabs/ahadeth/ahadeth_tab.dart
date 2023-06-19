



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isalmi/model/hadeth.dart';
import 'package:isalmi/routes/ahadeth_details/ahadeth_details.dart';

import '../../../../utlis/app_colors.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  @override
  List<Hadeth> hadethlist=[];
  Widget build(BuildContext context) {
    if(hadethlist.isEmpty){
      readahadethfiles();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
            child: Image.asset("assets/bg_hates.png")),
        Divider(height: 5,thickness: 4,color: Appcolours.primarycolor),
       const SizedBox(height: 7,),
       const Text("الحديث",style: TextStyle(fontWeight:
       FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,),
        const SizedBox(height: 7,),
        Divider(height: 5,thickness: 4,color: Appcolours.primarycolor),
        Expanded(
            flex: 7,
            child:ListView.builder(
                itemCount: hadethlist.length,
                itemBuilder: (context,index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BuildHadethNames(index,context),
                      Divider(height: 5,thickness: 4,color: Appcolours.primarycolor),
                    ],
                  );
                })
        )

      ],
    );



  }
  readahadethfiles ()async{
    String hadethfile= await rootBundle.loadString("assets/ahadeth .txt");
    List<String> hadeth=hadethfile.split("#");
    for(int i=0;i<hadeth.length;i++)
      {
        List<String> singlehadethlines=hadeth[i].trim().split("\n");
        String title=singlehadethlines.removeAt(0);
        String content=singlehadethlines.join("\n");
        hadethlist.add(Hadeth(title,content));
      }
    setState(() {});

  }
  Widget BuildHadethNames(int index,BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, AhadethDetails.routeName,arguments:
        hadethlist[index]);

      },
      child: Text(hadethlist[index].title,
          textAlign: TextAlign.center,
          style:TextStyle(fontSize: 27,
              fontWeight: FontWeight.bold)
      ),
    );
  }
}