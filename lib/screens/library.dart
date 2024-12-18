import 'package:flutter/material.dart';

import '../utils/app_theme.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
          leading:     Container(
            margin: const EdgeInsets.only(left:16,top: 6,bottom: 4),
            child: const Center(
              child: Text('D',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 23
                ),),
            ),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: appTheme.wick,
                shape: BoxShape.circle
            ),
          ),
        title:     Text('Your Library',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: appTheme.white,
            fontSize: 23,
          ),),
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.search,
                color: appTheme.white,
                size: 33,)),
          IconButton(onPressed: () {},
              icon: Icon(Icons.add,
                color: appTheme.white,
                size: 33,)),
        ],
      ),
      backgroundColor: appTheme.sik,
      body:
      SafeArea(
        right: true,
        left: true,
        child: ListView(
            children: [

          Padding(
        padding: const EdgeInsets.only( right: 16, left: 16),
        child: Row(

          mainAxisSize: MainAxisSize.max,
          children: [
            // for(int i =0; i <tads.length; i++)
            tads(
              text: 'Playlists',

            ),
            const SizedBox(width: 14,),
            tads(text: 'Albums'),
            const SizedBox(width: 14,),

            tads(text: 'Artists')

          ],
        ),
      ),
              Padding(
        padding: const EdgeInsets.only(top: 11),
        child: Container(
          width: 355,
          height: 1,
          color: appTheme.black,
        ),),
          ListTile(
        leading: Icon(Icons.swap_vert,
          color: appTheme.white,
          size: 25,
        ),
        title: Text('Recents',
          style: TextStyle(
              color: appTheme.white,
              fontSize: 16,
              fontWeight: FontWeight.w500
          ),),
        trailing: Icon(Icons.dashboard_outlined,
          color: appTheme.white,),
      ),
              tiles(
                childs:
                Icon(Icons.favorite,
                    color: appTheme.white,
                    size: 31,),
                   decorations:BoxDecoration(
              gradient: LinearGradient(colors: [
              Color(0XFF5E61F4),
              Color(0XFF8176DF),
              Color(0XFFABC4D0),
            ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )
      ),
                titles: Text('Liked Songs',
                  style: TextStyle(
                      color: appTheme.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),
                subtitles: Row(
                  children: [
                    Icon(Icons.sunny_snowing,
                      color: appTheme.green,
                      size: 16,),
                    Text('Playlist .2songs',
                      style: TextStyle(
                          color: appTheme.slate,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                      ),)
                  ],
                ),
              ),
          tiles(
              childs: Image.asset('assets/ruth.jpeg'),

              titles: Text('In Love with You',
                style: TextStyle(
                    color: appTheme.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),),
          subtitles:
            Text('Album .Frank Edwards',
            style: TextStyle(
                color: appTheme.slate,
                fontSize: 12,
                fontWeight: FontWeight.w400
            ),),),
              tiles(
                  childs: CircleAvatar(backgroundImage:AssetImage('assets/Darlene.jpeg') ,
                  ),
                  titles: Text('Tim Godfrey',
                    style: TextStyle(
                        color: appTheme.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
              subtitles:   Text('Artist',
                style: TextStyle(
                    color: appTheme.slate,
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                ),),),
              tiles(
                  childs: CircleAvatar(backgroundImage:AssetImage('assets/img.jpeg') ,
                  ),
                  titles: Text('Tim Godfrey',
                    style: TextStyle(
                        color: appTheme.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
              subtitles:   Text('Artist',
                style: TextStyle(
                    color: appTheme.slate,
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                ),),),
              tiles(
                  childs: CircleAvatar(child: Icon(Icons.add,color: appTheme.white,),
                      backgroundColor: appTheme.greyie,
                  ),
                  titles: Text('Add artist',
                    style: TextStyle(
                        color: appTheme.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
             ),
              SizedBox(height: 9,),
              tiles(
                childs: Icon(Icons.add,color: appTheme.white,),
                  decorations: BoxDecoration(
                    color: appTheme.greyie
                  ),
                titles: Text('Add podcasts',
                  style: TextStyle(
                      color: appTheme.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),),
              ),


    ]
    )
    ,
    )
    ,
    );
  }
}

class tiles extends StatelessWidget {
  Widget childs;
  Widget? subtitles;
  Widget titles;
  Decoration? decorations;
  tiles({
    super.key,
    required this.childs,
    this.subtitles,
    this.decorations,
    required this.titles,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: decorations,
        height: 70,
        width: 62,
        child: childs,
      ),
      subtitle: subtitles,
      title: titles,
    );
  }
}

class tads extends StatelessWidget {
  String text;
  void Function()? Ontap;

  tads({
    super.key, required this.text, this.Ontap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Ontap,
      child: Container(
        child: Center(
          child: Text(text,
            textAlign: TextAlign.center,

            style: TextStyle(
                fontSize: 11,
                color: appTheme.white
            ),),
        ),
        height: 32,
        width: 65,
        decoration: BoxDecoration(
            color: appTheme.greyie,
            borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}
