import 'package:flutter/material.dart';
import 'package:it_news_blog_hamidjk/mycolors.dart';

class dividerProfile extends StatelessWidget {
  const dividerProfile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: colorss.dividercolor,
      thickness: 1,
      indent: size.width / 6,
      endIndent: size.width / 6,
    );
  }
}