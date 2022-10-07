import 'package:flutter/material.dart';
import 'package:it_news_blog_hamidjk/gen/assets.gen.dart';
import 'package:it_news_blog_hamidjk/my_colors.dart';
import 'package:it_news_blog_hamidjk/my_components.dart';
import 'package:it_news_blog_hamidjk/viewpages/home_screen.dart';
import 'package:it_news_blog_hamidjk/viewpages/profile_screen.dart';

class mainscreen extends StatefulWidget {
  @override
  State<mainscreen> createState() => _mainscreenState();
}

final GlobalKey<ScaffoldState> _mykey = GlobalKey();

class _mainscreenState extends State<mainscreen> {
  var selectedindexpages = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textThemeins = Theme.of(context).textTheme;
    double SpaceMargin = size.width / 20;
    return SafeArea(
      child: Scaffold(
        key: _mykey,
        drawer: Drawer(
            backgroundColor: Colorss.scaffoldbackground,
            child: Padding(
              padding: EdgeInsets.only(right: SpaceMargin, left: SpaceMargin),
              child: ListView(
                children: [
                  DrawerHeader(
                      child: Center(
                    child: Image.asset(
                      Assets.images.itslogo.path,
                      scale: 5,
                    ),
                  )),
                  Divider(
                    color: Colorss.dividercolor,
                    thickness: 0.8,
                  ),
                  ListTile(
                    title: Text(
                      "پروفایل کاربر",
                      style: textThemeins.headline3,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    color: Colorss.dividercolor,
                    thickness: 0.8,
                  ),
                  ListTile(
                    title: Text(
                      "درباره آی تی بلاگ",
                      style: textThemeins.headline3,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    color: Colorss.dividercolor,
                    thickness: 0.8,
                  ),
                  ListTile(
                    title: Text(
                      "اشتراک گذاری برنامه",
                      style: textThemeins.headline3,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    color: Colorss.dividercolor,
                    thickness: 0.8,
                  ),
                  ListTile(
                    title: Text(
                      "برنامه در گیت هاب",
                      style: textThemeins.headline3,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    color: Colorss.dividercolor,
                    thickness: 0.8,
                  )
                ],
              ),
            )),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colorss.scaffoldbackground,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _mykey.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              Image(
                image: AssetImage(Assets.images.itslogo.path),
                height: size.height / 15.5,
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
            Positioned.fill(
              child: IndexedStack(index: selectedindexpages, children: [
                HomeScreenextract(
                    size: size,
                    textThemeins: textThemeins,
                    SpaceMargin: SpaceMargin),
                profilescreen(
                    size: size,
                    textThemeins: textThemeins,
                    SpaceMargin: SpaceMargin)
              ]),
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
      bottom: 7,
      left: 0,
      right: 0,
      child: Container(
        height: size.height / 10,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: Gradientcolors.bottomnavigationback,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Padding(
          padding: EdgeInsets.only(right: size.width / 6, left: size.width / 6),
          child: Container(
            height: size.height / 7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                gradient:
                    LinearGradient(colors: Gradientcolors.bottomnavigation)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () => screenchanger(0),
                      icon: ImageIcon(
                        AssetImage(Assets.icons.home.path),
                        color: Colorss.scaffoldbackground,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage(Assets.icons.par.path),
                        color: Colorss.scaffoldbackground,
                      )),
                  IconButton(
                      onPressed: () => screenchanger(1),
                      icon: ImageIcon(
                        AssetImage(Assets.icons.user.path),
                        color: Colorss.scaffoldbackground,
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
