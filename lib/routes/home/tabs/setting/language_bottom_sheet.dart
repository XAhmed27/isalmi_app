


import 'package:flutter/material.dart';
import 'package:isalmi/provider/settingprovider.dart';
import 'package:isalmi/utlis/app_colors.dart';
import 'package:provider/provider.dart';

class LanguagBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingProvider provider=Provider.of(context);
    return  Container(
      color: Appcolours.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Select your Language",textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                provider.changeCurrentLocale('en');
                Navigator.pop(context);
              },
              child:onLanguageRow(provider.currentlocale =="en", "English"),
            ),
            SizedBox(height: 10,),
        InkWell(
          onTap: (){
            provider.changeCurrentLocale("ar");
            Navigator.pop(context);
          },
          child:onLanguageRow(provider.currentlocale =="ar", "العربيه"),)
          ],
        ),
      ),
    );
  }
  onLanguageRow(bool isSelected,String Language)
  {
    if(isSelected)
      {
        return Text(Language,textAlign: TextAlign.start,
          style: TextStyle(fontSize: 20,color: Appcolours.primarycolor,
              fontWeight: FontWeight.bold),);
      }else{
      return Text(Language,textAlign: TextAlign.start,
        style: TextStyle(fontWeight: FontWeight.bold
            ,fontSize: 20,color: Appcolours.accentcolor));
    }
  }
}
