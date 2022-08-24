import 'dart:js';

import 'package:flutter/material.dart';
import 'package:travel_ui_stf/Screen/BottomNavigation.dart';

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
<<<<<<< HEAD

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
=======
>>>>>>> 095e22f3456e5f7a2c3cdd9794b72327034fbfac
