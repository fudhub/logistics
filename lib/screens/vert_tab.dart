import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class VertTab extends StatefulWidget {
  const VertTab({super.key});

  @override
  State<VertTab> createState() => _VertTabState();
}

class _VertTabState extends State<VertTab> {

  int selectdIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
             width: 200,
              child: ListView.separated(
                itemCount: 8,
                separatorBuilder: (context, int index) {
                  return SizedBox(
                    height: 5,
                  );
                },
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                       setState(() {
                         selectdIndex == index;
                       });
                    },
                    child: Container(
                      child: Row(
                        children: [
                          AnimatedContainer(duration: Duration(milliseconds: 550,),
                            height:(selectdIndex == index) ? 50 :0,
                            width: 5,
                            color:appTheme.cusk ,
                            child: Expanded(
                                child: Container(
                                  // height: 32,
                                  // width: 65,
                                  // decoration: BoxDecoration(
                                  //     color: appTheme.greyie,
                                  //     borderRadius: BorderRadius.circular(20)
                                  // ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 5),
                                    child: Text('Tab Title $index'),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  );

                },

              ),
            ),
            Expanded(child:
            Container())
          ],
        ),
      ),
    );
  }
}
