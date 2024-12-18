import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/browsemodel.dart';
import '../model/genremodel.dart';
import '../utils/app_theme.dart';

class Search extends StatefulWidget {
  final BrowseModel? browseModels;
  const Search({super.key,  this.browseModels,});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _searchcontroller = TextEditingController();

   List<Genremodel> listgenre=[
     Genremodel(
         image: DecorationImage(image: AssetImage('assets/ruth.jpeg')),
         text: "lyrical dance"),
     Genremodel(
         image:DecorationImage(image: AssetImage('assets/Ann Nesby .jpeg')),
         text: "surf crush"),
     Genremodel(
       image: DecorationImage(image:AssetImage('assets/Darlene.jpeg')),
         text: "jazz blues"),

   ];
   List<BrowseModel> listbrowse=[
     BrowseModel(color: appTheme.jampurple, title: 'Music', image: 'assets/img_1.jpeg'),
     BrowseModel(color: appTheme.ark, title: 'Podcasts', image: 'assets/img.jpeg'),
     BrowseModel(color: appTheme.avacado, title: 'Life events', image: 'assets/ruth.jpeg'),
     BrowseModel(color: appTheme.dansy, title: 'made fo you', image: 'assets/Darlene.jpeg'),
     BrowseModel(color: appTheme.green, title: 'Afro', image: 'assets/Darlene.jpeg'),
     BrowseModel(color: appTheme.wes, title: 'New Release', image: 'assets/Darlene.jpeg'),
     BrowseModel(color: appTheme.yul, title: 'Hip-Hop', image: 'assets/Darlene.jpeg'),
     BrowseModel(color: appTheme.verdun, title: 'Party', image: 'assets/Darlene.jpeg'),
     BrowseModel(color: appTheme.thac, title: 'Charts', image: 'assets/Darlene.jpeg'),
     BrowseModel(color: appTheme.twany, title: 'Charts', image: 'assets/Darlene.jpeg'),
   ];
   @override
  void initState() {
    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,

      ),
      backgroundColor:  appTheme.sik,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(left: 14,right: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Container(
                     child: const Center(
                       child: Text('D',
                         style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.black87,
                             fontSize: 23
                         ),),
                     ),
                     height: 40,
                     width: 40,
                     decoration: BoxDecoration(
                         color: appTheme.wick,
                         shape: BoxShape.circle
                     ),
                   ),
                   const SizedBox(width: 20),
                    Text('Search',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: appTheme.white,
                       fontSize: 26,
                     ),),
                   const SizedBox(width: 85),
                   IconButton(onPressed: () {},
                       icon: Icon(Icons.camera_alt_outlined,
                         color: appTheme.white,
                         size: 33,)),
                 ],
               ),
               const SizedBox(height: 23),
               SizedBox(
                 height: 44,
                 width: double.infinity,
                 child: TextField(
                     autocorrect: true,
                     cursorColor: Colors.black87,
                     controller: _searchcontroller,
                     decoration: InputDecoration(
                       enabled: false,
                       fillColor: appTheme.white,
                       filled: true,

                       hintText: ("What do want to listen to?"),
                       hintStyle: TextStyle(color: Colors.black54,
                           fontSize: 17),
                       prefixIcon: Icon(Icons.search_rounded,
                           size: 25,color: Colors.black54),
                     )
                 ),
               ),
               const SizedBox(height: 23),
               const  Text('Explore your genres',
                 style: TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                     fontWeight: FontWeight.w600
                 ),),
               const SizedBox(height: 13),
               SizedBox(
                 width: 99,
                 height: 180,
                 child: ListView.builder(
                   itemCount: listgenre.length,
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (context, index) => Genre(genremodel: listgenre[index],),),
               ),
               const SizedBox(height: 10),
               Text('Browse all',
                 style: TextStyle(
                     color: appTheme.white,
                     fontSize: 18,
                     fontWeight: FontWeight.w600
                 ),),
               SizedBox(height: 10),
               SizedBox(
                 height:500,
                 width:double.infinity ,
                 child: GridView.builder(scrollDirection: Axis.vertical,
                     itemCount: listbrowse.length,
                     gridDelegate:
                     SliverGridDelegateWithFixedCrossAxisCount(

                       crossAxisCount: 2,
                       crossAxisSpacing: 11,
                       mainAxisSpacing: 11,

                     ),
                     itemBuilder: (context, index){
                       return  GestureDetector(
                           child:

                           Brows(browseModels: listbrowse[index],)

                       );
                     }
                 ),
               ),
         ],
        ),),
      )),
    );
  }
}

class Brows extends StatelessWidget {
   Brows({
    super.key, required this.browseModels,
  });
  BrowseModel browseModels;
  @override
  Widget build(BuildContext context) {
    return
      Stack(children:[
      Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: browseModels.color,
        ),
      ),
      Positioned(left: 14,top: 10,
        child: Text(browseModels.title,style:
        TextStyle(
            color: appTheme.white,
            fontSize: 18,
            fontWeight: FontWeight.w500),),
      ),
      Positioned(
        left: 89,
        top: 30,
        height: 73,
          width: 59,
          child:
          Image.asset(browseModels.image,

          ))
    ]
   );
  }
}

class Genre extends StatefulWidget {

   Genre({
    super.key, required this.genremodel,
  });
   Genremodel genremodel;
  @override
  State<Genre> createState() => _GenreState();
}

class _GenreState extends State<Genre> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          height: 180,
          width: 100,
          decoration: BoxDecoration(
            image: widget.genremodel.image
          ),
          // child: Image(image:widget.genremodel.image),



             ),
      ),
    );
  }
}
