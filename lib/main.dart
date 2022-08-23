import 'dart:js';

import 'package:flutter/material.dart';
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
      );

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/Home', 
        builder: (context, state) => const Home()),

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

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Info(),
    Text('Menu'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined, color: Colors.black),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded, color: Colors.black),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined, color: Colors.black),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.black),
            label: 'Menu',
          ),
        ],
        // selectedIconTheme: ,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        backgroundColor: Colors.white10,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
