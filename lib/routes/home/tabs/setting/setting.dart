


import 'package:flutter/material.dart';
import 'package:isalmi/provider/settingprovider.dart';
import 'package:isalmi/routes/home/tabs/setting/language_bottom_sheet.dart';
import 'package:isalmi/utlis/app_colors.dart';
import 'package:provider/provider.dart';

class SettingTab   extends StatefulWidget {


  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider=Provider.of(context);
    return Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
            //Spacer(flex: 2,),
            Text("Language",),
            SizedBox(height: 22,),
            InkWell(
              onTap: (){
                onclickedlanguage(context);
              },
                child: CreateRow(provider.currentlocale == "en"?"English":"العربيه")),
            SizedBox(height: 22,),
            Text("Mode"),
            SizedBox(height: 22,),
            InkWell(
              onTap: (){
                onclickedTheme(context);
              },
                child: CreateRow("Light")),
            //Spacer(flex: 8,),

          ],
        ),
      ),
    );
  }

  Widget CreateRow(String rowName)
  {
    return Container(
      decoration: BoxDecoration(border:
      Border.all(color: Appcolours.primarycolor),
      color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(rowName,
                style: Theme.of(context).textTheme.titleSmall,
           ),
           ),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}

void onclickedTheme(BuildContext context) {

}

void onclickedlanguage(BuildContext context) {
  showModalBottomSheet(context: context, builder: (context){
    return LanguagBottomSheet();
  });



}
