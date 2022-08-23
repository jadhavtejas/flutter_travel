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
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'Travel UI',
        debugShowCheckedModeBanner: false,
      );

  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const MyStatefulWidget()),
      GoRoute(path: '/Home', builder: (context, state) => const Home()),
      GoRoute(
        path: '/Info',
        builder: (context, state) => Info(),
      ),
      GoRoute(
        path: '/Search',
        builder: (context, state) => Search(),
      ),
    ],
  );
}
