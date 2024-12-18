import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:newpro/utils/screen_utils.dart';

import '../utils/app_theme.dart';


class RadarPage extends StatelessWidget {
  const RadarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Get.width,
        height: 200.h,
        child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 145.h,
                      width: 145.w,
                      decoration: BoxDecoration(
                          color: appTheme.greyie
                      ),
                      child: Image.asset("assets/img_1.jpeg",
                        fit:BoxFit.fill ,)
                  ),
                  SizedBox(height: 8.h,),
                  SizedBox(
                    // height: 500.h,
                    // width: 145.w,
                    child: Text('Sia -Cheap Thrills,',
                      style: TextStyle(
                          color: appTheme.white,
                          fontWeight: FontWeight.w600
                      ),),
                  ),


                ],
              ),
            );
          },
      ));


  }
}
