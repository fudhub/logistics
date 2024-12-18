import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';


final darkTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(showSelectedLabels: true,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
            color: appTheme.white
        ),
        unselectedLabelStyle: TextStyle(
              color: appTheme.grey,

        ),
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered
    ),
    useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      primary: appTheme.primaryColor,
      ),


  textTheme:
  // TextTheme(
  //   bodyLarge: TextStyle(
  //       fontSize: 20.fSize,
  //       color: appTheme.white,
  //       fontWeight: FontWeight.w800,
  //       fontFamily: "laila"
  //   ),
  //   bodySmall: TextStyle(
  //       fontSize: 14.fSize,
  //       color: appTheme.white,
  //       fontWeight: FontWeight.w600,
  //       fontFamily: "laila"
  //   ),
  // ),
  GoogleFonts.lailaTextTheme(),
);

// ourStyle({weight="FontWeight.w500",dynamic color= Colors.white,double? size=11} ){
//   return  TextStyle(
//     color: color,
//     fontSize: size,
//     fontWeight:weight
//   );
//
// }