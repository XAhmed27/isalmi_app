


import 'package:flutter/material.dart';
import 'package:isalmi/utlis/app_colors.dart';

class  QuranTab  extends StatelessWidget {
  List<String> soraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
              child: Image.asset("assets/qur2an_screen_logo.png")),
          Divider(height: 5,thickness: 4,color: Appcolours.primarycolor),
          SizedBox(height: 10,),
          const Text("اسم سوره",textAlign: TextAlign.center,style:TextStyle(fontSize: 27,fontWeight: FontWeight.bold),),
          Divider(height: 5,thickness: 4,color: Appcolours.primarycolor),
          Expanded(
            flex: 7,
              child:ListView.builder(
                itemCount: 114,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        Text(soraNames[index],
                          textAlign: TextAlign.center,
                          style:TextStyle(fontSize: 27,
                              fontWeight: FontWeight.bold)
                          ,),
                        Divider(height: 5,thickness: 4,color: Appcolours.primarycolor),
                      ],
                    );
                  })
              )

        ],
      ),
    );
  }
}
