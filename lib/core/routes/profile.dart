import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibaza/core/routes_name/profile_route_name.dart';
import 'package:ibaza/core/routes_name/route_name.dart';
import 'package:ibaza/features/profile/presentation/pages/profile_asosiy.dart';

class ProfileRoute {
  static Route? onGeneretyRoute(RouteSettings settings) {
    final String routeName = settings.name ?? "";
    switch (routeName) {
      case ProfileRoutreName.profile:
        return CupertinoPageRoute(builder: (_) => ProfileMain());
      default:
        return CupertinoPageRoute(
            builder: (_) => Scaffold(
                  body: Text("salom"),
                ));
    }
  }
}
