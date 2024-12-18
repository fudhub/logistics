import 'package:flutter/material.dart';
import 'package:newpro/screens/premium.dart';
import 'package:newpro/screens/search.dart';

import '../utils/app_theme.dart';
import 'home.dart';
import 'library.dart';

class Navbar extends StatefulWidget {
   Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  List<Widget> pages=[HomePage(),Search(),Library(),Premium()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.sik,
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
          backgroundColor: Colors.transparent,
          onTap: (value) {
            setState(() {
              index= value;
            });
          },
          items: [
            BottomNavigationBarItem(icon:
            AnimatedContainer(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        index == 0?  'assets/icons8-home-33 (1).png' : 'assets/icons8-home-33.png'),
                    fit: BoxFit.cover,

                    invertColors: true,
                    colorFilter: ColorFilter.linearToSrgbGamma()
                )
              ),

              // curve: Curves.easeInOutQuint,
              duration: Duration(
                milliseconds: 1,
              ),

            ),
              label: "Home",

            ),
            BottomNavigationBarItem(icon:
            AnimatedContainer(
              height: 30,
                width: 30,
                decoration: BoxDecoration(
                    // color: index == 1 ? Colors.white : Colors.white38,
                    image:
                    DecorationImage(image:
                    AssetImage(
                    index == 1?  'assets/icons8-search-32 (1).png' : 'assets/icons8-search-32.png'),
                    fit: BoxFit.cover,

                      invertColors: true,
                      colorFilter: ColorFilter.linearToSrgbGamma()

                    )),
              duration: Duration(
                milliseconds: 1,
              ),

              ),
    label: "Search",
            ),

            BottomNavigationBarItem(icon:
            AnimatedContainer(
              height: 30,
              width: 30,
              duration: Duration(
                milliseconds: 1,
              ),

              decoration:BoxDecoration(
    image:
    DecorationImage(image:
    AssetImage(
        index == 2?  'assets/icons8-search-32 (1).png' : 'assets/icons8-search-32.png'),
    fit: BoxFit.cover,

    invertColors: true,
    colorFilter: ColorFilter.linearToSrgbGamma())

    ) ,
            ),
              label: "Your library",
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(icon:
            AnimatedContainer(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                // color: index == 3? Colors.white : Colors.white38,
                  image:
                  DecorationImage(image:
                  AssetImage(
                      index == 3?  'assets/icons8-spotify-50 (1).png' : 'assets/icons8-spotify-50.png'),
                      fit: BoxFit.cover,

                      invertColors: true,
                      colorFilter: ColorFilter.linearToSrgbGamma()

                  )),

              duration: Duration(
                milliseconds: 1,
              ),

            ),
              label: "Premium",
            ),
          ]),

    );
  }
}
