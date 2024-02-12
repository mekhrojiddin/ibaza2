import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibaza/core/routes_name/route_name.dart';

class Savatcha {
  static Route? onGeneretyRoute(RouteSettings settings) {
    final String routeName = settings.name ?? "";
    switch (routeName) {
      case AppRouteName.splash:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.asosiy:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.katalog:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.buyurtmalar:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.savatcha:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.profile:
        return CupertinoPageRoute(builder: (_) => Scaffold());
    }
  }
}
