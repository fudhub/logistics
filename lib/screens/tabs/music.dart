import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:newpro/utils/screen_utils.dart';
import '../../Common widget/arti_ste.dart';
import '../../Common widget/pre_view.dart';
import '../../Common widget/ra_dar.dart';
import '../../utils/app_theme.dart';

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:appTheme.primaryColor,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: [
            Padding(
              padding: const EdgeInsets.only(top:28.0,left: 15,right: 10),
              child: Text("On the Radar",
                style: TextStyle(
                    fontSize: 20.fSize,
                    color: appTheme.white,
                    fontWeight: FontWeight.w800
                ),),
            ),
            RadarPage(),
            SizedBox(height: 8.h,),
             Podss(image:"assets/Alicia Keys.jpeg"),
            Podss(image: "assets/Chill Out.jpeg"),
            Podss(image: "assets/d6cc5.jpeg"),
            Artiste(),
            Podss(image: "assets/e12c4f9e.jpeg"),
            // SizedBox(height: 9.h,),
           PreviewEpisode(
               text1: "Milky Pap & Marriage ",
               text2: "Problems",
               text3: "Episode . Owoje Has A Podcast ",
               text4: "Sep 23, 1h 9min .",
               text5: " Raising a newborn means I have"
                   "to steal mealtimes in my own house. Unrelated,"
                   "idolizing marriage may make you have a bad one.",
               image:  "assets/ea8893b.jpeg",
               color: appTheme.curry.withOpacity(0.7),
           ),
            PreviewEpisode(
               text1: "The'Together is  ",
               text2: "Better'episode",
               text3: "Episode . I Said What I Said ",
               text4: "Oct 25, 59min .",
               text5: " On the bounce this week, FK and"
                   "Jola ponder on the power of friendships,"
                   "relationships, partnerships and the magic of "
                   "deliberate human collaborations.",
               image:  "assets/flyer.jpeg",
               color: appTheme.inchie.withOpacity(0.5),
           ),
            PreviewEpisode(
               text1: "YOU MUST FOCUS ON",
               text2: " YOU",
               text3: "Episode . Weekly Motivation by Ben Li",
               text4: "Sep 30, 9min .",
               text5: " This episode is in early access for"
                   "members from Mon,23 Sep 2024 until Mon,30 Sep"
                   "2024. Become a Member for early access.",
               image:  "assets/Song Cover.jpeg",
               color: appTheme.slate.withOpacity(0.4),
           ),

          ],
        ),
      ),
    );
  }
}

class Podss extends StatelessWidget {
  final String image;
const Podss({
    super.key,
 required  this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Container(
       margin:const EdgeInsets.only(bottom: 15),
      width: 380.w,
       height: 420.h,
       decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage(image),
           fit: BoxFit.cover,
           opacity: 3.5,
           filterQuality: FilterQuality.high
         ),
           color: appTheme.wes,
           borderRadius: BorderRadius.circular(10)
       ),
       child: Padding(
         padding: const EdgeInsets.only(bottom: 15,),
         child: Row(
           crossAxisAlignment:  CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
           children: [

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
         ),
       ),
     ),
                );
  }
}
