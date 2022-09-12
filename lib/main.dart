import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:it_news_blog_hamidjk/mycolors.dart';
import 'package:it_news_blog_hamidjk/viewpages/splash_screen.dart';


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
            fontFamily: 'jkbold',
            textTheme: TextTheme(
                headline1: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 14,
                    color: colorss.postertitle,
                    fontWeight: FontWeight.w700),
                subtitle1: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 20,
                    color: colorss.postertitle,
                    fontWeight: FontWeight.bold),
                subtitle2: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 17,
                    color: colorss.texttitle,
                    fontWeight: FontWeight.bold),
                bodyText1: TextStyle(
                    fontFamily: 'jkbold',
                    fontSize: 15,
                    color: colorss.titles,
                    fontWeight: FontWeight.bold))),
        debugShowCheckedModeBanner: false,
        home: splashscreen());
  }
}
