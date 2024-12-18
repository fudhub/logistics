import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Artiste extends StatelessWidget {
  const Artiste({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: Get.width,
      height: 200,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 145,
                    width: 145,
                    decoration: BoxDecoration(
                        color: Colors.white38
                    ),
                    child: Image.asset("assets/ruth.jpeg",
                      fit:BoxFit.fill ,)
                ),
                SizedBox(height: 8,),
                SizedBox(
                  child: Text('Ruth B',
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