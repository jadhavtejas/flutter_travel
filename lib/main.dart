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
      );
}
