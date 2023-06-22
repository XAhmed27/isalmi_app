


import 'package:flutter/material.dart';
import 'package:isalmi/provider/settingprovider.dart';
import 'package:isalmi/routes/home/tabs/ahadeth/ahadeth_tab.dart';
import 'package:isalmi/routes/home/tabs/quran/quran_tab.dart';
import 'package:isalmi/routes/home/tabs/radio/radio_tab.dart';
import 'package:isalmi/routes/home/tabs/sebha/sebha_tab.dart';
import 'package:isalmi/routes/home/tabs/setting/setting.dart';
import 'package:isalmi/utlis/app_colors.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  static String routename="home";


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=1;
  List <Widget> Tabs=
  [
    QuranTab(),
    AhadethTab(),
    RadioTab(),
    SebhaTab(),
    SettingTab(),
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider provider=Provider.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(provider.currentTheme==ThemeMode.light?
        "assets/bg_home.png":"assets/dark_bg.png"),fit: BoxFit.fill)
      ),
      child: Scaffold(
        backgroundColor:Theme.of(context).scaffoldBackgroundColor ,
        appBar: AppBar(
         elevation: 0,
         backgroundColor: Colors.transparent,
         centerTitle: true,
         title: Text("اسلامي",style:Theme.of(context).appBarTheme.titleTextStyle)
        ),
        body: Tabs[index],
        bottomNavigationBar:BottomNavigationBar(
              currentIndex: index,
              onTap: (chosenposition){
                index=chosenposition;
                setState(() {
                });

              },
              items: const [
                BottomNavigationBarItem(
                    label: "quran",
                    icon: ImageIcon(
                        AssetImage("assets/moshaf_icon.png")

                    )),
                BottomNavigationBarItem(
                    label: "hadeth",
                    icon: ImageIcon(
                        AssetImage("assets/hates_icon.png")

                    )),
                BottomNavigationBarItem(
                    label: "sebha",
                    icon: ImageIcon(
                        AssetImage("assets/sebha_icon.png")

                    )),
                BottomNavigationBarItem(
                    label: "radio",
                    icon: ImageIcon(
                        AssetImage("assets/radio_icon.png")

                    )),
                BottomNavigationBarItem(
                    label: "Setting",
                    icon: Icon(Icons.settings)
                    ),
              ],
        )
        ),
      );

  }
}
