import 'package:flutter/material.dart';
import 'package:it_news_blog_hamidjk/component/my_colors.dart';
import 'package:it_news_blog_hamidjk/gen/assets.gen.dart';
import 'package:it_news_blog_hamidjk/model/postermap.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer' as logdev;

class dividerProfile extends StatelessWidget {
  const dividerProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colorss.dividercolor,
      thickness: 1,
      indent: size.width / 6,
      endIndent: size.width / 6,
    );
  }
}

class HashTagsListComponent extends StatelessWidget {
  HashTagsListComponent({
    Key? key,
    required this.textThemeins,
    required this.index,
  }) : super(key: key);

  final TextTheme textThemeins;
  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(18)),
            gradient: LinearGradient(
                colors: Gradientcolors.hashtags,
                begin: Alignment.centerRight,
                end: Alignment.centerLeft)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ImageIcon(
                AssetImage(Assets.icons.hashtag.path),
                color: Colors.white,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                tagsList[index].title,
                style: textThemeins.displayLarge,
              )
            ],
          ),
        ));
  }
}

myurllauncher(String url) async {
  var myuri = Uri.parse(url);
  if (await canLaunchUrl(myuri)) {
    await launchUrl(myuri);
  } else {
    logdev.log("Could Not Launch ${myuri.toString()}");
  }
}
