// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DestinationPage extends StatefulWidget {
  final Route<dynamic>? Function(RouteSettings) onGenereteRoute;
  const DestinationPage({
    Key? key,
    required this.onGenereteRoute,
  }) : super(key: key);

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(onGenerateRoute: widget.onGenereteRoute,);
  }
}