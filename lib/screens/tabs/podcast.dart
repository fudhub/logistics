import 'package:flutter/material.dart';

import '../../Common widget/pre_view.dart';
import '../../utils/app_theme.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:appTheme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              text1: "Currency - The Zeal Of ",
              text2: "the Lord",
              text3: "Episode . Celebration Church Int'l ",
              text4: "Nov 15, 49min .",
              text5: " CURRENCY - THE ZEAL OF THE"
                  "LORD We learnt how the key things in the Bible are,"
                  "often emphasized to draw your attention and how "
                  "God's plan is sovereign.",
              image:  "assets/ea8893b.jpeg",
              color: appTheme.thac.withOpacity(0.5),
            ),


          ],
        ),
      ),
    );
  }
}
