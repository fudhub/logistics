import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newpro/screens/tabs/all.dart';
import 'package:newpro/screens/tabs/music.dart';
import 'package:newpro/screens/tabs/podcast.dart';
import 'package:newpro/utils/screen_utils.dart';

import '../utils/app_theme.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> items=[
    "All",
    "Music",
    "Podcasts"
  ];
  List<Widget> pages=[
    AllPage(),
    MusicPage(),
    PodcastPage()
  ];
   int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.only(left: 2.0,right: 9,top: 33),
              child: Column(
                children: [
              //     Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //
              //       child: const Center(
              //         child: Text('D',
              //           style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               color: Colors.black87,
              //               fontSize: 23
              //           ),),
              //       ),
              //       height: 55.h,
              //       width: 55.w,
              //       decoration: BoxDecoration(
              //           color: Color(0xff19E58C),
              //           shape: BoxShape.circle
              //       ),
              //     ),
              //     SizedBox(width: 7.w,),
              //
              //
              //   ],
              // ),
            
                  SizedBox(
                    height: 55.h,
                    // width: MediaQuery.of(context).size.width,
                    child: ListView.builder(

                      physics: BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentindex = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            child: Container(
                              margin: EdgeInsets.all(5),
                              width: 85.w,
                              height: 45.h,
                              decoration: BoxDecoration(
                                  color:currentindex ==index? Color(0xff1ED760):Color(0xFF45494A),
                                  borderRadius: BorderRadius.circular(21)),
                              child: Center(
                                child: Text(items[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: currentindex == index? appTheme.black:appTheme.white,
                                      fontSize: 16.fSize
                                  ),),
                              ),
                            ),
                          ),
                        );
                      },),
                  ),
                  Container(
                    margin:const EdgeInsets.only(top: 4),
                    height: Get.height,
                    width: Get.width,
                    color: Colors.amber,
                    child: pages[currentindex]
                  )
            
                      ],
                    ),
            ),
          )),
    );
  }
}





