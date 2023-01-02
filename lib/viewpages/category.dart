import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_news_blog_hamidjk/gen/assets.gen.dart';
import 'package:it_news_blog_hamidjk/models/postermap.dart';

import '../component/my_colors.dart';
import '../component/my_components.dart';
import '../component/strings.dart';

class Categorypage extends StatefulWidget {
  @override
  State<Categorypage> createState() => _CategorypageState();
}

class _CategorypageState extends State<Categorypage> {
  @override
  Widget build(BuildContext context) {
    var textThemeins = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;

    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              SvgPicture.asset(
                Assets.icons.w,
                height: 100,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                MyStrings.Successemail,
                style: textThemeins.bodyText2,
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    hintText: MyStrings.namefamily,
                    hintStyle: textThemeins.headline4),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                MyStrings.category,
                style: textThemeins.bodyText2,
              ),
              SizedBox(height: 20),
              //HashTagsGridViewList
              SizedBox(
                height: 80,
                width: double.infinity,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tagsList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 0.3),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (!tagListreciver.contains(tagsList[index])) {
                            tagListreciver.add(tagsList[index]);
                          } else {
                            print("${tagsList[index].title} is exist");
                          }
                        });
                      },
                      child: HashTagsListComponent(
                        textThemeins: textThemeins,
                        index: index,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                Assets.icons.arrOw.path,
                scale: 2,
              ),
              SizedBox(
                height: 20,
              ),
              //SelectedHashTagsList
              SizedBox(
                height: 80,
                width: double.infinity,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: tagListreciver.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 0.3),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          tagListreciver.removeAt(index);
                        });
                      },
                      child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                              color: Colorss.lightwhite),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.pin,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  tagListreciver[index].title,
                                  style: textThemeins.headline5,
                                )
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
