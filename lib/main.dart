import 'package:flutter/material.dart';
import 'pages/map_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app - midterm project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shop app'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.menu_open, color: Colors.blue, size: 40.0)),
              Tab(icon: Icon(Icons.map_rounded, color: Colors.red, size: 40.0)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MenuPage(),
            MapPage(),
          ],
        ),
      ),
    );
  }
}