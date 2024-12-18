import 'package:flutter/material.dart';
import 'package:newpro/utils/screen_utils.dart';

import '../utils/app_theme.dart';


class PreviewEpisode extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final Color  color;
  final String image;
  const PreviewEpisode({super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.image,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return     Center(
      child: Container(
        padding:const EdgeInsets.all(11) ,
        width: 380.w,
        height: 440.h,
        margin:const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(10)
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text1,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                Icon(Icons.add_circle_outline,
                  size: 25,
                  color: appTheme.white,
                )
              ],
            ),
            Text(text2,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),),
            Text(text3,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400
              ),),
            SizedBox(height: 11.h,),
            Center(
              child: Container(
                margin:const EdgeInsets.only(top: 19),
                width: 110.w,
                height: 110.h,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image),
                    fit: BoxFit.cover,

                  ),
                  color: appTheme.fillcolor,
                ),

                // child: SvgPicture.asset(""),
              ),
            ),
            SizedBox(height: 11.h,),
            Center(
              child: Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: text4,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    TextSpan(text:text5,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ]
              )),
            ),
            SizedBox(height: 11.h,),
            Row(

              children: [
                Container(
                  width: 180.w,
                  height: 47.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: appTheme.black.withOpacity(0.4)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.volume_off,
                        color: appTheme.white.withOpacity(0.7),
                        size: 25,
                      ),
                      SizedBox(width: 4.h,),
                      Text("Preview episode",
                          style: TextStyle(
                            fontSize: 13,
                            color: appTheme.white.withOpacity(0.7),))
                    ],
                  ),
                ),
                SizedBox(width: 45.w,),

                Icon(Icons.more_vert_rounded,
                  size: 30,),
                ElevatedButton(onPressed: () {

                },

                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(CircleBorder()),
                        backgroundColor: WidgetStatePropertyAll(appTheme.white)
                    ),
                    child: Icon(Icons.play_arrow_rounded,
                      size: 29,
                      color: appTheme.black,
                    ))

              ],
            )

          ],
        ),
      ),
    );
  }
}
