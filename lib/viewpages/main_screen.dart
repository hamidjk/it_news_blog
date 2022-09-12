import 'package:flutter/material.dart';
import 'package:it_news_blog_hamidjk/gen/assets.gen.dart';
import 'package:it_news_blog_hamidjk/mycolors.dart';
import 'package:it_news_blog_hamidjk/viewpages/home_screen.dart';
import 'package:it_news_blog_hamidjk/viewpages/profile_screen.dart';

class mainscreen extends StatefulWidget {
  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  var selectedindexpages = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textThemeins = Theme.of(context).textTheme;
    double SpaceMargin = size.width / 20;
    List<Widget> itblogscreenpagesList = [
      HomeScreenextract(
          size: size, textThemeins: textThemeins, SpaceMargin: SpaceMargin),
      profilescreen(
          size: size, textThemeins: textThemeins, SpaceMargin: SpaceMargin),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: colorss.scaffoldbackground,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
              Image(
                image: AssetImage(Assets.images.itslogo.path),
                height: size.height / 13.6,
              ),
              Icon(
                Icons.search,
                color: Colors.black,
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Center(
              child: Positioned.fill(
                child: itblogscreenpagesList[selectedindexpages],
              ),
            ),
            bottomNavigationmain(
              size: size,
              screenchanger: (int value) {
                setState(() {
                  selectedindexpages = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class bottomNavigationmain extends StatelessWidget {
  const bottomNavigationmain({
    Key? key,
    required this.size,
    required this.screenchanger,
  }) : super(key: key);

  final Size size;
  final Function(int) screenchanger;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: size.height / 10,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: gradientcolors.bottomnavigationback,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Padding(
          padding: EdgeInsets.only(right: size.width / 6, left: size.width / 6),
          child: Container(
            height: size.height / 7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                gradient:
                    LinearGradient(colors: gradientcolors.bottomnavigation)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () => screenchanger(0),
                      icon: ImageIcon(
                        AssetImage(Assets.icons.home.path),
                        color: colorss.scaffoldbackground,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage(Assets.icons.par.path),
                        color: colorss.scaffoldbackground,
                      )),
                  IconButton(
                      onPressed: () => screenchanger(1),
                      icon: ImageIcon(
                        AssetImage(Assets.icons.user.path),
                        color: colorss.scaffoldbackground,
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
