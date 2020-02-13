import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instakilogram/ui/login_ui/login_screens.dart';
import 'package:instakilogram/ui/main/main_screens.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;

    switch (settings.name){
      case '/':
        return CupertinoPageRoute(builder: (_) => LoginScreens());
      case MainScreens.routeName:
        return CupertinoPageRoute(builder: (_) => MainScreens());
      default :
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}