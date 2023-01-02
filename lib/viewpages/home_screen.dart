import 'package:flutter/material.dart';
import 'package:it_news_blog_hamidjk/gen/assets.gen.dart';
import 'package:it_news_blog_hamidjk/models/postermap.dart';

import '../component/my_colors.dart';
import '../component/my_components.dart';
import '../component/strings.dart';

class HomeScreenextract extends StatelessWidget {
  const HomeScreenextract({
    Key? key,
    required this.size,
    required this.textThemeins,
    required this.SpaceMargin,
  }) : super(key: key);

  final Size size;
  final TextTheme textThemeins;
  final double SpaceMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            stackPoster(size: size, textThemeins: textThemeins),
            //HashtagsList
            hashtagList(SpaceMargin: SpaceMargin, textThemeins: textThemeins),
            SizedBox(
              height: 35,
            ),
            seeMoreHotBlogList(
                SpaceMargin: SpaceMargin, textThemeins: textThemeins),
            SizedBox(
              height: 10,
            ),
            hotBlogList(
                size: size,
                SpaceMargin: SpaceMargin,
                textThemeins: textThemeins),
            seeMoreHotPodcastsList(
                SpaceMargin: SpaceMargin, textThemeins: textThemeins),
            SizedBox(
              height: 10,
            ),
            hotPodcastsList(size: size, SpaceMargin: SpaceMargin),
            SizedBox(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}

class seeMoreHotPodcastsList extends StatelessWidget {
  const seeMoreHotPodcastsList({
    Key? key,
    required this.SpaceMargin,
    required this.textThemeins,
  }) : super(key: key);

  final double SpaceMargin;
  final TextTheme textThemeins;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: SpaceMargin),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(Assets.icons.micro.path),
            color: Colorss.titles,
          ),
          Text(
            MyStrings.viewHotpad,
            style: textThemeins.bodyText1,
          )
        ],
      ),
    );
  }
}

class seeMoreHotBlogList extends StatelessWidget {
  const seeMoreHotBlogList({
    Key? key,
    required this.SpaceMargin,
    required this.textThemeins,
  }) : super(key: key);

  final double SpaceMargin;
  final TextTheme textThemeins;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, SpaceMargin, 0),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(Assets.icons.medad.path),
            color: Colorss.titles,
          ),
          Text(MyStrings.viewHotBlog, style: textThemeins.bodyText1),
        ],
      ),
    );
  }
}

class hotPodcastsList extends StatelessWidget {
  const hotPodcastsList({
    Key? key,
    required this.size,
    required this.SpaceMargin,
  }) : super(key: key);

  final Size size;
  final double SpaceMargin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 4.2,
      child: ListView.builder(
        itemCount: podcastsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0, 0, index == 0 ? SpaceMargin : 15, 20),
                child: Container(
                  height: size.height / 5.6,
                  width: size.width / 2.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          image: AssetImage(podcastsList[index].image),
                          fit: BoxFit.cover)),
                ),
              ),
              Text(podcastsList[index].title),
            ],
          );
        },
      ),
    );
  }
}

class hotBlogList extends StatelessWidget {
  const hotBlogList({
    Key? key,
    required this.size,
    required this.SpaceMargin,
    required this.textThemeins,
  }) : super(key: key);

  final Size size;
  final double SpaceMargin;
  final TextTheme textThemeins;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itBlogList.getRange(0, 5).length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? SpaceMargin : 15),
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 5.2,
                  width: size.width / 2.4,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            image: DecorationImage(
                                image: NetworkImage(itBlogList[index].imageUrl),
                                fit: BoxFit.cover)),
                        foregroundDecoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            gradient: LinearGradient(
                                colors: Gradientcolors.blog,
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                      ),
                      Positioned(
                        bottom: 7,
                        right: 0,
                        left: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              itBlogList[index].writer,
                              style: textThemeins.headline1,
                            ),
                            Row(
                              children: [
                                Text(
                                  itBlogList[index].views,
                                  style: textThemeins.headline1,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.white,
                                  size: 16,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width / 2.4,
                  child: Text(
                    itBlogList[index].title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class hashtagList extends StatelessWidget {
  const hashtagList({
    Key? key,
    required this.SpaceMargin,
    required this.textThemeins,
  }) : super(key: key);

  final double SpaceMargin;
  final TextTheme textThemeins;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tagsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                EdgeInsets.fromLTRB(0, 12, index == 0 ? SpaceMargin : 14, 8),
            child: HashTagsListComponent(
              textThemeins: textThemeins,
              index: index,
            ),
          );
        },
      ),
    );
  }
}

class stackPoster extends StatelessWidget {
  const stackPoster({
    Key? key,
    required this.size,
    required this.textThemeins,
  }) : super(key: key);

  final Size size;
  final TextTheme textThemeins;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width / 1.19,
          height: size.height / 4.19,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              image: DecorationImage(
                  image: AssetImage(posterMap["imageposterasset"]),
                  fit: BoxFit.cover)),
          foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              gradient: LinearGradient(
                  colors: Gradientcolors.homepostergradient,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Positioned(
          bottom: 7,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    posterMap["writer"] + " - " + posterMap["date"],
                    style: textThemeins.headline1,
                  ),
                  Row(
                    children: [
                      Text(
                        posterMap["viewcount"],
                        style: textThemeins.headline1,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.remove_red_eye_rounded,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  )
                ],
              ),
              Text(
                posterMap["subtitle"],
                style: textThemeins.subtitle1,
              )
            ],
          ),
        )
      ],
    );
  }
}
