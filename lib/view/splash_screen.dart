import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:it_news_blog_hamidjk/gen/assets.gen.dart';
import 'package:it_news_blog_hamidjk/view/main_screen.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Mainscreen(),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(Assets.images.splashit.path),
                height: 100,
              ),
              SizedBox(
                height: 35,
              ),
              SpinKitPouringHourGlass(
                color: Colors.black,
                size: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
