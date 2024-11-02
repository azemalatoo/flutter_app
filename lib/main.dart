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
      title: 'Flutter App with Tabs',
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
          title: const Text('Map app'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.menu_open, color: Colors.blueAccent)),
              Tab(icon: Icon(Icons.map_rounded, color: Colors.greenAccent)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MapPage(),
          ],
        ),
      ),
    );
  }
}