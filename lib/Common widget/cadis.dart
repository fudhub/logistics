import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:newpro/utils/screen_utils.dart';

import '../model/cardismodel.dart';
import '../screens/musiclist.dart';
import '../utils/app_theme.dart';


class CardPage extends StatefulWidget {
  // final CardisModel listcardis;
  const CardPage({
    super.key,
    // required this.listcardis,
  });

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  List<CardisModel> listCardis=[
    CardisModel(text: "Sia -Cheap Thrills", image: "assets/img_1.jpeg"),
    CardisModel(text: "Mercy Chinwo", image: "assets/Mercy Chinwo.jpeg"),
    CardisModel(text: "Moses Bliss", image: "assets/mosesbliss.jpeg"),
    CardisModel(text: "Only You", image: "assets/img.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 200.h,
      child: ListView.builder(
        itemCount: listCardis.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Cardiss(cardisModel: listCardis[index]);
        },
    ));

  }
}

class Cardiss extends StatelessWidget {
  const Cardiss({
    super.key,
  required this.cardisModel,
  });

  final CardisModel cardisModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MusicListPage(),));
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 145.h,
                width: 145.w,
                decoration: BoxDecoration(
                    color: appTheme.slate
                ),
                child: Image.asset(cardisModel.image,
                  fit:BoxFit.fill ,)
            ),
            SizedBox(height: 8.h,),
            SizedBox(
              child: Text(cardisModel.text,
                style: TextStyle(
                    color: appTheme.white,
                    fontWeight: FontWeight.w600
                ),),
            ),


          ],
        ),
      ),
    );
  }
}