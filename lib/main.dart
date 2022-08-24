import 'dart:js';

import 'package:flutter/material.dart';
import 'package:travel_ui_stf/Screen/BottomNavigation.dart';
import 'package:travel_ui_stf/Screen/Home.dart';
import 'package:travel_ui_stf/Screen/Information.dart';
import 'package:travel_ui_stf/Screen/Search.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: MyStatefulWidget(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Avenir'),
      );
}

class ViewCh extends StatefulWidget {
  ViewCh({Key? key}) : super(key: key);

  @override
  State<ViewCh> createState() => _ViewChState();
}

class _ViewChState extends State<ViewCh> {
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
