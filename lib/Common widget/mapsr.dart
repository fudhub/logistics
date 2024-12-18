import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:newpro/utils/screen_utils.dart';

class RMaps extends StatelessWidget {
  const RMaps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 200.h,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder:  (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 145.h,
                    width: 145.w,
                    decoration: BoxDecoration(
                        color: Colors.white38
                    ),
                    child: Image.asset("assets/img.jpeg",
                      fit:BoxFit.fill ,)
                ),
                SizedBox(height: 8,),
                SizedBox(
                  child: Text('Only You ',
                    style: TextStyle(
                        color: Colors.white,
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