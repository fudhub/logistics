import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:newpro/utils/screen_utils.dart';
import '../../Common widget/arti_ste.dart';
import '../../Common widget/cadis.dart';
import '../../Common widget/mapsr.dart';
import '../../utils/app_theme.dart';

class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:appTheme.primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:15.0,left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 22,),
              Text("You're offline",
                style: TextStyle(
                    fontSize: 18.fSize,
                    color: appTheme.white,
                    fontWeight: FontWeight.w500
                ),),
              // SizedBox(height: 3,),
              Text("Download podcasts to listen offline",
                style: TextStyle(
                  fontSize: 12.fSize,
                  color: appTheme.slate,
                ),),
              SizedBox(height: 28.h,),
              Text("Recently played",
                style: TextStyle(
                    fontSize: 20.fSize,
                    color: appTheme.white,
                    fontWeight: FontWeight.w800
                ),),
              SizedBox(height: 6.h,),
              CardPage(),
              SizedBox(height: 6.h,),
              Text("Popular radio",
                style: TextStyle(
                    fontSize: 20.fSize,
                    color: appTheme.white,
                    fontWeight: FontWeight.w800
                ),),
              SizedBox(height: 6.h,),
              RMaps(),
              SizedBox(height: 6.h,),
              Text("Popular artists",
                style: TextStyle(
                    fontSize: 20.fSize,
                    color: Colors.white,
                    fontWeight: FontWeight.w800
                ),),
              SizedBox(height: 6.h,),
            Artiste()

            ],
          ),
        ),
      ),
    );
  }
}
