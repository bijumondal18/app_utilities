import 'package:flutter/cupertino.dart';

extension CustomNavigator on BuildContext {
  //add new page to navigation stack
  Future<dynamic> push(Widget page) async {
    Navigator.push(
        this,
        CupertinoPageRoute(
          builder: (_) => page,
          fullscreenDialog: false,
        ));
  }

  //add new page to navigation stack
  Future<dynamic> pushFromBottom(Widget page) async {
    Navigator.push(
        this,
        CupertinoPageRoute(
          builder: (_) => page,
          fullscreenDialog: true,
        ));
  }

  //clear current navigation stack
  Future<dynamic> pushReplacement(Widget page) async {
    Navigator.pushReplacement(
        this,
        CupertinoPageRoute(
          builder: (_) => page,
          fullscreenDialog: false,
        ));
  }

  //clear all the navigation history stack
  Future<dynamic> pushAndRemoveUntil(Widget page) async {
    Navigator.pushAndRemoveUntil(
        this,
        CupertinoPageRoute(
          builder: (_) => page,
          fullscreenDialog: false,
        ),
            (route) => false);
  }

  //get back from current page from navigation stack
  void pop(Widget page, [result]) async {
    return Navigator.of(this).pop(result);
  }
}