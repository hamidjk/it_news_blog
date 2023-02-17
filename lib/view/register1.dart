import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:it_news_blog_hamidjk/gen/assets.gen.dart';
import 'package:it_news_blog_hamidjk/view/category.dart';
import 'package:validators/validators.dart';
import 'package:it_news_blog_hamidjk/component/strings.dart';
import '../component/my_colors.dart';

class Register1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textThemeins = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          Assets.icons.w,
          height: 100,
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: MyStrings.register1, style: textThemeins.titleSmall)),
        Padding(
          padding: const EdgeInsets.only(top: 35),
          child: ElevatedButton(
            onPressed: (() {
              emailBottomSheet(context, size, textThemeins);
            }),
            child: Text(" ثبت نام "),
          ),
        )
      ]),
    )));
  }

  Future<dynamic> emailBottomSheet(
      BuildContext context, Size size, TextTheme textThemeins) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: size.height / 2,
            decoration: BoxDecoration(
                color: Colorss.scaffoldbackground,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  MyStrings.email,
                  style: textThemeins.displaySmall,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, right: 30, left: 30, bottom: 20),
                  child: TextField(
                    onChanged: (value) {
                      print(value + " is Email : " + isEmail(value).toString());
                    },
                    style: textThemeins.titleSmall,
                    decoration: InputDecoration(
                        hintText: "itblog@gmail.com",
                        hintStyle: textThemeins.headlineMedium),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      activeCodeBottomSheet(context, size, textThemeins);
                    },
                    child: Text("بعدی"))
              ],
            ),
          ),
        );
      },
    );
  }
}

Future<dynamic> activeCodeBottomSheet(
    BuildContext context, Size size, TextTheme textThemeins) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: size.height / 2,
          decoration: BoxDecoration(
              color: Colorss.scaffoldbackground,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                MyStrings.activecode,
                style: textThemeins.displaySmall,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 30, left: 30, bottom: 20),
                child: TextField(
                  onChanged: (value) {
                    print(value + " is Email : " + isEmail(value).toString());
                  },
                  style: textThemeins.titleSmall,
                  decoration: InputDecoration(
                      hintText: "*******",
                      hintStyle: textThemeins.headlineMedium),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => Categorypage())));
                  },
                  child: Text("بعدی"))
            ],
          ),
        ),
      );
    },
  );
}
