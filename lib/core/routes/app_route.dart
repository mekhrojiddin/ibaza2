import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibaza/core/routes_name/route_name.dart';
import 'package:ibaza/features/profile/presentation/pages/profile_asosiy.dart';

class AppRoutes {
  static Route? onGeneretyRoute(RouteSettings settings) {
    final String routeName = settings.name ?? "";
    switch (routeName) {
      case AppRouteName.splash:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.asosiy:
        return CupertinoPageRoute(
            builder: (_) => Scaffold(
                  body: Text("salom"),
                ));
      case AppRouteName.katalog:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.buyurtmalar:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.savatcha:
        return CupertinoPageRoute(builder: (_) => Scaffold());
      case AppRouteName.profile:
        return CupertinoPageRoute(builder: (_) => ProfileMain());
      default:
        return CupertinoPageRoute(builder: (_) => Scaffold());
    }
  }
}
