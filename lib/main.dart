import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:it_news_blog_hamidjk/my_colors.dart';
import 'package:it_news_blog_hamidjk/viewpages/category.dart';
import 'package:it_news_blog_hamidjk/viewpages/main_screen.dart';
import 'package:it_news_blog_hamidjk/viewpages/profile_screen.dart';
import 'package:it_news_blog_hamidjk/viewpages/register1.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark));
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textThemeins = Theme.of(context).textTheme;
    return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: [
          Locale('fa', '')
        ],
        theme: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5),
                  borderRadius: BorderRadius.circular(18)),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
              textStyle: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return textThemeins.headline2;
                  }
                  return textThemeins.button;
                },
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colorss.texttitle;
                  }
                  return Colorss.button;
                },
              ),
            )),
            fontFamily: 'jkbold',
            textTheme: TextTheme(
                headline1: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 14,
                    color: Colorss.postertitle,
                    fontWeight: FontWeight.w700),
                subtitle1: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 21,
                    color: Colorss.postertitle,
                    fontWeight: FontWeight.bold),
                subtitle2: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 20,
                    color: Colorss.texttitle,
                    fontWeight: FontWeight.bold),
                headline3: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 17,
                    color: Colorss.texttitle,
                    fontWeight: FontWeight.bold),
                headline4: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 14,
                    color: Colorss.emailhint,
                    fontWeight: FontWeight.bold),
                headline5: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 15,
                    color: Colorss.texttitle,
                    fontWeight: FontWeight.bold),
                bodyText1: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 15,
                    color: Colorss.titles,
                    fontWeight: FontWeight.bold),
                button: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 30,
                    color: Colorss.postertitle,
                    fontWeight: FontWeight.bold),
                bodyText2: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 15,
                    color: Colorss.button,
                    fontWeight: FontWeight.bold),
                headline2: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 60,
                    color: Colorss.postertitle,
                    fontWeight: FontWeight.bold))),
        debugShowCheckedModeBanner: false,
        home: mainscreen());
  }
}
