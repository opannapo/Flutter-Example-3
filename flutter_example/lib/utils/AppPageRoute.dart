import 'package:flutter/material.dart';

class AppPageRoute extends MaterialPageRoute {
  AppPageRoute(direct) : super(builder: (context) => direct);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}
