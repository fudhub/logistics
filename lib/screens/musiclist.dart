import 'package:flutter/material.dart';
import 'package:newpro/utils/screen_utils.dart';

import '../utils/app_theme.dart';

class MusicListPage extends StatefulWidget {
  const MusicListPage({super.key});

  @override
  State<MusicListPage> createState() => _MusicListPageState();
}

class _MusicListPageState extends State<MusicListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
           pinned: true,
              delegate: _CustomSliverAppBarDelegate(
                expandedHeight: 200,
              )),
          buildImage(),
          // SliverAppBar(
          //   // toolbarHeight: 108.h,
          //   expandedHeight: 300.h,
          //   backgroundColor: appTheme.amber,
          //   bottom: PreferredSize(preferredSize: Size.fromHeight(1.h),
          //     child:
          //     Center(
          //       child: Container(
          //         height: 250.h,
          //         width: 250.w,
          //         decoration: BoxDecoration(
          //             color: appTheme.white,
          //             borderRadius: BorderRadius.circular(5)
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

        ],
      ),
    );
  }

  buildImage() =>
      SliverGrid(
        delegate: SliverChildBuilderDelegate((context, index) =>
          Container(
            height: 80.h,
            width: 90.w,
            color: appTheme.avacado,
          ),
        childCount: 14,

        ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,


          ),


          );

}
class _CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const _CustomSliverAppBarDelegate({
    required this.expandedHeight,


  });


  @override
  Widget build(BuildContext context,
      double shrinkOffset,
      bool overlapsContent) {
    final size = 60;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      fit: StackFit.expand,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
            top: top,
            left: 15,
            right: 15,
            child: Container())
      ],
    );
  }

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;


  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) =>
      Opacity(
        opacity: appear(shrinkOffset),
        child: AppBar(
          title: Text("data"),
        ),
      );

  Widget buildBackground(double shrinkOffset) =>
      Opacity(
          opacity: disappear(shrinkOffset),
          child: Image.asset("assets/Alicia Keys.jpeg"));


  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => KToolbarHeight + 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    throw UnimplementedError();
  }


}
